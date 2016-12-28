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

/** You can use this protocol for color theming of your app. For example, like this:
 
    ```
    enum Theme: Color {
        case title
        case subtitle
        case background

        var color: UIColor {
            switch self {
            case .title: return UIColor.black
            case .subtitle: return UIColor.lightGray
            case .background: return UIColor.white
            }
        }
    }
 
    // ... somewhere in code
 
    label <~ UILabel.style(textColor: Theme.title)
    ```
    Notice that `UIColor` also conforms to `Color` so for every style expecting `Color` you can pass `UIColor` instance.
*/
public protocol Color: CustomStringConvertible {
    var color: UIColor { get }
}


private extension CGFloat {
    func toHex() -> String {
        let int = Int(255.0 * self)
        return String(format: "%02x", int)
    }
}


public extension Color {
    public var description: String {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        let success = color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        guard success else {
            return "--- can't convert color \(self) to RGB ---"
        }
        
        let alphaString = (alpha == 1.0) ? "" : alpha.toHex()
        
        return "#" +
            red.toHex() +
            green.toHex() +
            blue.toHex() +
            alphaString
    }
}

extension UIColor: Color {
    public var color: UIColor { return self }
}
