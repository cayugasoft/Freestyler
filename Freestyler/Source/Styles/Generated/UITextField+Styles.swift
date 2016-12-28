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

#if os(iOS)
import UIKit
import FreestylerCore



public extension UITextField {
    /** Updates `placeholder` property of `UITextField` instance. */
    public static func style(placeholder: String?) -> Style {
        return Style("Placeholder \(placeholder)") {
            (styleable: UITextField) in
            styleable.placeholder = placeholder
        }
    }

    /** Updates `attributedPlaceholder` property of `UITextField` instance. */
    public static func style(attributedPlaceholder: NSAttributedString) -> Style {
        return Style("Attributed Placeholder \(attributedPlaceholder)") {
            (styleable: UITextField) in
            styleable.attributedPlaceholder = attributedPlaceholder
        }
    }

    /** Updates `defaultTextAttributes` property of `UITextField` instance. */
    public static func style(defaultTextAttributes: [String : AnyObject]) -> Style {
        return Style("Default Text Attributes \(defaultTextAttributes)") {
            (styleable: UITextField) in
            styleable.defaultTextAttributes = defaultTextAttributes
        }
    }

    /** Updates `font` property of `UITextField` instance. */
    public static func style(font: Font?) -> Style {
        return Style("Font \(font)") {
            (styleable: UITextField) in
            styleable.font = font?.font
        }
    }

    /** Updates `textColor` property of `UITextField` instance. */
    public static func style(textColor: Color?) -> Style {
        return Style("Text Color \(textColor)") {
            (styleable: UITextField) in
            styleable.textColor = textColor?.color
        }
    }

    /** Updates `textAlignment` property of `UITextField` instance. */
    public static func style(textAlignment: NSTextAlignment) -> Style {
        return Style("Text Alignment \(textAlignment)") {
            (styleable: UITextField) in
            styleable.textAlignment = textAlignment
        }
    }

    /** Updates `typingAttributes` property of `UITextField` instance. */
    public static func style(typingAttributes: [String : AnyObject]?) -> Style {
        return Style("Typing Attributes \(typingAttributes)") {
            (styleable: UITextField) in
            styleable.typingAttributes = typingAttributes
        }
    }

    /** Updates `adjustsFontSizeToFitWidth` property of `UITextField` instance. */
    public static func style(adjustsFontSizeToFitWidth: Bool) -> Style {
        return Style("Adjusts Font Size To Fit Width \(adjustsFontSizeToFitWidth)") {
            (styleable: UITextField) in
            styleable.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        }
    }

    /** Updates `minimumFontSize` property of `UITextField` instance. */
    public static func style(minimumFontSize: CGFloat) -> Style {
        return Style("Minimum Font Size \(minimumFontSize)") {
            (styleable: UITextField) in
            styleable.minimumFontSize = minimumFontSize
        }
    }

    /** Updates `borderStyle` property of `UITextField` instance. */
    public static func style(borderStyle: UITextBorderStyle) -> Style {
        return Style("Border Style \(borderStyle)") {
            (styleable: UITextField) in
            styleable.borderStyle = borderStyle
        }
    }

    /** Updates `background` property of `UITextField` instance. */
    public static func style(background: UIImage?) -> Style {
        return Style("Background \(background)") {
            (styleable: UITextField) in
            styleable.background = background
        }
    }

    /** Updates `disabledBackground` property of `UITextField` instance. */
    public static func style(disabledBackground: UIImage?) -> Style {
        return Style("Disabled Background \(disabledBackground)") {
            (styleable: UITextField) in
            styleable.disabledBackground = disabledBackground
        }
    }

    /** Updates `clearButtonMode` property of `UITextField` instance. */
    public static func style(clearButtonMode: UITextFieldViewMode) -> Style {
        return Style("Clear Button Mode \(clearButtonMode)") {
            (styleable: UITextField) in
            styleable.clearButtonMode = clearButtonMode
        }
    }

    /** Updates `leftViewMode` property of `UITextField` instance. */
    public static func style(leftViewMode: UITextFieldViewMode) -> Style {
        return Style("Left View Mode \(leftViewMode)") {
            (styleable: UITextField) in
            styleable.leftViewMode = leftViewMode
        }
    }

    /** Updates `rightViewMode` property of `UITextField` instance. */
    public static func style(rightViewMode: UITextFieldViewMode) -> Style {
        return Style("Right View Mode \(rightViewMode)") {
            (styleable: UITextField) in
            styleable.rightViewMode = rightViewMode
        }
    }
}
#endif
