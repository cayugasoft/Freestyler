//: Playground - noun: a place where people can play

import UIKit


enum StyleDebugBehavior {
    case Warning
    case Crash
    case Ignore
}

var debugBehavior = StyleDebugBehavior.Warning


public protocol Styleable {}

public typealias StyleClosure = (Styleable) throws -> Void

extension UIView: Styleable {}
extension UIBarItem: Styleable {}


protocol StyleType {
    init(closures: [StyleClosure])
    var closures: [StyleClosure] { get }
}


extension StyleType {
    func applyTo(styleable: Styleable) -> Styleable {
        for (index, closure) in closures.enumerate() {
            do {
                try closure(styleable)
            } catch {
                let messages = [
                    "😡 Error happened while trying to apply style \(self) to Styleable \(styleable).",
                    "Error in closure with index \(index).",
                    "\(error)"
                ]
                switch debugBehavior {
                case .Ignore: continue
                case .Warning: messages.forEach { print($0) }
                case .Crash: fatalError(messages.joinWithSeparator("\n"))
                }
            }
        }
        return styleable
    }
    
    static func combineStyles<X: StyleType>(style1: X, _ style2: X) -> X {
        return X(closures: style1.closures + style2.closures)
    }
}



/** Defines style for given `UIView` subclass. Style is made of 1 or several closures (see initializers), or from several other styles for this subclass. You can apply style to view using `applyTo(_:)` method or operator `<~`. */
public class Style: StyleType, ArrayLiteralConvertible {
    /// Array of closures for this style.
    public let closures: [StyleClosure]
    
    public convenience init(_ closure: Closure) {
        self.init([closure])
    }
    
    public required init(closures: [Closure]) {
        self.closures = closures
    }
    
    public required init(arrayLiteral elements: StyleType...) {
        let allClosures: [StyleClosure] = elements.reduce([]) { accumulator, style in
            accumulator + style.closures
        }
        self.init(allClosures)
    }
}

infix operator <~ { associativity left precedence 100 }
func <~ <V: Styleable> (left: V, right: StyleType) -> V {
    right.applyTo(left)
    return left
}

infix operator + { associativity left precedence 140 }
func + <X: StyleType> (left: X, right: X) -> X {
    return X.combineStyles(left, right)
}


let s1 = Style { ($0 as! UIView).backgroundColor = .blackColor() }
let s2 = [s1, s1, s1, s1]


print(StyleClosure is ((UIView) -> Void))