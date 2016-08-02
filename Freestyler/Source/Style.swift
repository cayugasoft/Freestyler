//: Playground - noun: a place where people can play

import UIKit


enum StyleDebugBehavior {
    case Warning
    case Crash
    case Ignore
}

enum StyleError: ErrorType, CustomStringConvertible {
    case WrongType(expected: Any.Type, actual: Any.Type)
    
    var description: String {
        switch self {
        case .WrongType(let expected, let actual):
            return "Expected to get Styleable of type \(expected) but actually get \(actual)."
        }        
    }
}

var debugBehavior = StyleDebugBehavior.Crash


public protocol Styleable {}

public typealias StyleClosure = (Styleable) throws -> Void

extension UIView: Styleable {}
extension UIBarItem: Styleable {}


public func typeChecker<X: Styleable>(styleable: Styleable) throws -> X {
    guard let x = styleable as? X else {
        throw StyleError.WrongType(expected: X.self, actual: styleable.dynamicType)
    }
    return x
}

public protocol StyleType {
    init(name: String?, closures: [StyleClosure])
    var closures: [StyleClosure] { get }
    var name: String { get }
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
                case .Crash: fatalError("\n" + messages.joinWithSeparator("\n") + "\n")
                }
            }
        }
        return styleable
    }
    
    static func combineStyles<X: StyleType>(style1: X, _ style2: X) -> X {
        let finalName = [style1.name, style2.name].joinWithSeparator(" + ")
        return X(name: finalName, closures: style1.closures + style2.closures)
    }
}



/** Defines style for given `UIView` subclass. Style is made of 1 or several closures (see initializers), or from several other styles for this subclass. You can apply style to view using `applyTo(_:)` method or operator `<~`. */
public class Style: StyleType, ArrayLiteralConvertible, CustomStringConvertible {
    /// Array of closures for this style.
    public let closures: [StyleClosure]
    public var name: String
    
    public required init(name: String? = nil, closures: [StyleClosure]) {
        self.closures = closures
        self.name = ""
        self.name = name ?? "<<Anonymous style: \(unsafeAddressOf(self))>>"
    }
    
    public convenience init(_ name: String? = nil, _ closure: StyleClosure) {
        self.init(name: name, closures: [closure])
    }
    
    public required convenience init(arrayLiteral elements: StyleType...) {
        let allClosures: [StyleClosure] = elements.reduce([]) { accumulator, style in
            accumulator + style.closures
        }
        let finalName = elements.map { $0.name }.joinWithSeparator(" + ")
        self.init(name: finalName, closures: allClosures)
    }
    
    public var description: String {
        return "\"\(name)\""
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
