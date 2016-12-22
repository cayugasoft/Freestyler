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

/** Defines style for given `UIView` subclass. Style is made of 1 or several closures (see initializers), or from several other styles for this subclass. You can apply style to view using `applyTo(_:)` method or operator `<~`. You can combine styles using `combineStyles(_:_:)` method or operator `+`. */
public class Style: StyleType, ExpressibleByArrayLiteral, CustomStringConvertible {
    /// Array of closures for this style.
    public let closures: [StyleClosure]
    
    /// Name of style (i.e. "Rounded corners"). Useful for debugging.
    public var name: String
    
    public required init(_ name: String? = nil, styleClosures: [StyleClosure]) {
        self.closures = styleClosures
        self.name = ""
        if let name = name {
            self.name = name
        } else {
            let closuresCount = styleClosures.count
            let closuresTitle = closuresCount == 1 ? "closure" : "closures"
            self.name = "<<Anonymous style (\(closuresCount) \(closuresTitle)): \(Unmanaged.passUnretained(self).toOpaque())>>"
        }
        
    }
    
    public convenience init(_ name: String? = nil, styleClosure: @escaping StyleClosure) {
        self.init(name, styleClosures: [styleClosure])
    }
    
    public convenience init<S: Styleable>(_ name: String? = nil, closures: [(S) -> Void]) {
        self.init(name, styleClosures: closures.map(cast))
    }
    
    public convenience init<S: Styleable>(_ name: String? = nil, closure: @escaping (S) -> Void) {
        self.init(name, styleClosure: cast(closure: closure))
    }
    
    public required convenience init(arrayLiteral elements: StyleType...) {
        let allClosures: [StyleClosure] = elements.reduce([]) { accumulator, style in
            accumulator + style.closures
        }
        let finalName = elements.map { $0.name }.joined(separator: " + ")
        self.init(finalName, styleClosures: allClosures)
    }
    
    public var description: String {
        return "\"\(name)\""
    }
}

/** Check the type of parameter and casts it to necessary type. How to use inside style closure:
 
```let label: UILabel = try typeChecker($0)```
*/
private func typeChecker<V: Styleable>(styleable: Styleable) throws -> V {
    guard let x = styleable as? V else {
        throw StyleError.wrongType(expected: V.self, actual: type(of: styleable))
    }
    return x
}

private func cast<V: Styleable>(closure: @escaping (V) -> Void) -> StyleClosure {
    return {
        (styleable: Styleable) in
        let s: V = try typeChecker(styleable: styleable)
        closure(s)
    }
}

