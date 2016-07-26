import UIKit


/** Defines style for given `UIView` subclass. Style is made of 1 or several closures (see initializers), or from several other styles for this subclass. You can apply style to view using `applyTo(_:)` method or operator `<~`. */
public class Style<S: Styleable>: ArrayLiteralConvertible {
    public typealias Closure = (S) -> Void
    
    /// Array of closures for this style.
    public let closures: [Closure]
    
    public convenience init(_ closure: Closure) {
        self.init([closure])
    }
    
    // i.e. T: UIView, S: UILabel
    public convenience init<T: Styleable>(_ style: Style<T>) {
        assert(S.self is T.Type, "You can't cast Style<\(T.self)> to Style<\(S.self)> because \(S.self) is not inherited from \(T.self).")
        self.init(style.closures.map {
            tClosure in
            let sClosure: Closure = { s in
                tClosure(s as! T)
            }
            
            return sClosure
        })
    }
    
    public init(_ closures: [Closure]) {
        self.closures = closures
    }
    
    public init(styles: [Style<S>]) {
        self.closures = styles.reduce([Closure]()) { accumulator, style in
            return accumulator + style.closures
        }
    }
    
    public required convenience init(arrayLiteral elements: AnyObject...) {
        let styles: [Style<S>] = elements.map { element in
            guard let style = element as? Style else {
                fatalError("Items of array literal must be of type Style")
            }
            let sStyle = Style<S>(style)
            return sStyle
        }
        self.init(styles: styles)
    }
//    
//    public typealias Element = S
//    
//    public required convenience init<T: Style>(arrayLiteral elements: T...) {
//        self.init(styles: elements.map {
//            tStyle in
//            return Style<S>(tStyle) })
//    }
    
    /** Applies style to view. Closures are called one by one in defined order. Returns the same view so you can chain calls. */
    public func applyTo(styleable: S) -> S {
        closures.forEach { $0(styleable) }
        return styleable
    }
    
    /** Combines styles (i.e. combines arrays of their closures) and returns resulting style. */
    public static func combineStyles(first: Style<S>, _ second: Style<S>) -> Style<S> {
        return Style<S>(first.closures + second.closures)
    }
}

infix operator <~ { associativity left precedence 100 }
func <~ <V: Styleable> (left: V, right: Style<V>) -> V {
    right.applyTo(left)
    return left
}

infix operator + { associativity left precedence 140 }
func + <V: Styleable> (left: Style<V>, right: Style<V>) -> Style<V> {
    return Style<V>.combineStyles(left, right)
}
