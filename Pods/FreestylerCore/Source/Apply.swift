// The MIT License (MIT)
// 
// Copyright (c) Copyright © 2016 Cayugasoft Technologies
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

/// For those who don't like operators.
public extension StyleType {
    /// Applies this style to given `Styleable`. For error handling, see `StyleDebugBehavior`.
    /// - parameters:
    ///     - styleable: `styleable` to which `self` will be applied.
    /// - returns: The same `styleable` passed as parameter. This allows to chain method calls.
    @discardableResult public func apply<V: Styleable>(to styleable: V) -> V {
        for (index, closure) in closures.enumerated() {
            do {
                try closure(styleable)
            } catch {
                let messages = [
                    "",
                    "😡 Error happened while trying to apply style \(self) to Styleable \(styleable).",
                    "Error in closure with index \(index).",
                    "\(error)",
                    ""
                ]
                fatalError(messages.joined(separator: "\n"))
            }
        }
        return styleable
    }
    
    /// Combines multiple styles into one. Arrays of closures are merged and their order is preserved.
    /// - parameter styles: styles to be combined
    /// - returns: single style contains all closures from combined styles
    @discardableResult public static func combineStyles<S: StyleType>(_ styles: [S]) -> S {
        var finalName = ""
        var closures = [StyleClosure]()
        for (index, style) in styles.enumerated() {
            closures += style.closures
            finalName += style.name
            if index != styles.count - 1 {
                finalName += "; "
            }
        }
        return S(finalName, styleClosures: closures)
    }
}

public extension Styleable {
    /// Applies style to given styleable and returns this styleable
    @discardableResult public func apply<S: StyleType>(style: S) -> Self {
        style.apply(to: self)
        return self
    }
}

public extension Array where Element: Styleable {
    /// Applies style to array of styleables one by one.
    @discardableResult public func apply<S: StyleType>(style: S) -> [Element] {
        self.forEach { style.apply(to: $0) }
        return self
    }
    
    /// Applies array of styles to array of styleables one by one.
    @discardableResult public func apply<S: StyleType>(styles: [S]) -> [Element] {
        let combinedStyle = Style.combineStyles(styles)
        self.forEach { combinedStyle.apply(to: $0) }
        return self
    }
}

public extension Array where Element: StyleType {
    /// Applies array of styles to single styleable.
    @discardableResult public func apply<S: Styleable>(to styleable: S) -> S {
        self.forEach { $0.apply(to: styleable) }
        return styleable
    }
}

/// For those who like operators
// MARK: OPERATORS
precedencegroup StyleApplicationPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
}

infix operator <~ : StyleApplicationPrecedence

/// The same as `apply(to:)` method.
@discardableResult public func <~ <V: Styleable, S: StyleType> (left: V, right: S) -> V {
    right.apply(to: left)
    return left
}

/// The same as static `combineStyles(_:)` method.
public func <~ <S: StyleType> (left: S, right: S) -> S {
    return S.combineStyles([left, right])
}

/// The same as `apply(style:)` method.
@discardableResult public func <~ <V: Styleable, S: StyleType> (left: [V], right: S) -> [V] {
    return left.apply(style: right)
}

/// The same as `apply(to:)` method.
@discardableResult public func <~ <V: Styleable, S: StyleType> (left: V, right: [S]) -> V {
    return right.apply(to: left)
}

/// The same as `apply(styles:)` method.
@discardableResult public func <~ <V: Styleable, S: StyleType> (left: [V], right: [S]) -> [V] {
    return left.apply(styles: right)
}
