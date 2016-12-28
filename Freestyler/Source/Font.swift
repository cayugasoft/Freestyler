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

import UIKit


/** You can use this protocol to define set of fonts commonly used in the app. For example, like this:
 
 ```
 enum Typography: Font {
    case big
    case medium
    case small
 
     var font: Font {
         switch self {
         case .big: return UIFont.systemFont(ofSize: 18.0)
         case .medium: return UIFont.systemFont(ofSize: 14.0)
         case .small: return UIFont.systemFont(ofSize: 11.0)
         }
     }
 }
 
 // ... somewhere in code
 
 label <~ UILabel.style(font: Typography.big)
 ```
 Notice that `UIFont` also conforms to `Font` so for every style expecting `Font` you can pass `UIFont` instance.
 */
public protocol Font: CustomStringConvertible {
    var font: UIFont { get }
}


public extension Font {
    public var description: String {
        UIFont.systemFont(ofSize: 18.0)
        
        return font.description
    }
}


extension UIFont: Font {
    public var font: UIFont { return self }
}



