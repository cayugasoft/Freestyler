import UIKit


/** Defines style for given `UIView` subclass. Style is made of 1 or several closures (see initializers), or from several other styles for this subclass. You can apply style to view using `applyTo(_:)` method or operator `<~`. */
public class Style<V: UIView> {
    public typealias Closure = (V) -> Void
    
    public let closures: [Closure]
    
    public convenience init(_ closure: Closure) {
        self.init([closure])
    }
    
    public init(_ closures: [Closure]) {
        self.closures = closures
    }
    
    public init(styles: [Style<V>]) {
        self.closures = styles.reduce([Closure]()) { accumulator, style in
            return accumulator + style.closures
        }
    }
    
    /** Applies style to view.*/
    public func applyTo(view: V) -> V {
        closures.forEach { $0(view) }
        return view
    }
    
    private func castClosure<U: UIView>(closure: Closure) -> (U) -> Void {
        guard U() is V else {
            fatalError("Can't cast closure of type \(V.self) to closure of type \(U.self).")
        }
        
        let uClosure = {
            (u: U) -> Void in
            let v = u as! V
            closure(v)
        }
        return uClosure
    }
    
    /** Upcasts given style to style for subclass. For example, if you have some `Style<UIView>`, you can cast it to `Style<UILabel>`. Note that **opposite is not true** and method will crash if you try to cast from `Style<UILabel>` to `Style<UIView>`. */
    public func cast<U: UIView>() -> Style<U> {
        typealias UClosure = (U) -> Void
        var uClosures: [UClosure] = []
        for vClosure in closures {
            let uClosure = castClosure(vClosure)
            uClosures.append(uClosure)
        }
        return Style<U>(uClosures)
    }
}

infix operator <~ { associativity left precedence 100 }
func <~ <V: UIView> (left: V, right: Style<V>) -> V {
    right.applyTo(left)
    return left
}

infix operator + { associativity left precedence 140 }
func + <V: UIView> (left: Style<V>, right: Style<V>) -> Style<V> {
    return Style<V>(left.closures + right.closures)
}
