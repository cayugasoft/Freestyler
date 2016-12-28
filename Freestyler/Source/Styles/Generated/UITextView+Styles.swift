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



public extension UITextView {
    /** Updates `font` property of `UITextView` instance. */
    public static func style(font: Font?) -> Style {
        return Style("Font \(font)") {
            (styleable: UITextView) in
            styleable.font = font?.font
        }
    }

    /** Updates `textColor` property of `UITextView` instance. */
    public static func style(textColor: Color?) -> Style {
        return Style("Text Color \(textColor)") {
            (styleable: UITextView) in
            styleable.textColor = textColor?.color
        }
    }

    /** Updates `isEditable` property of `UITextView` instance. */
    public static func style(isEditable: Bool) -> Style {
        return Style("Is Editable \(isEditable)") {
            (styleable: UITextView) in
            styleable.isEditable = isEditable
        }
    }

    /** Updates `allowsEditingTextAttributes` property of `UITextView` instance. */
    public static func style(allowsEditingTextAttributes: Bool) -> Style {
        return Style("Allows Editing Text Attributes \(allowsEditingTextAttributes)") {
            (styleable: UITextView) in
            styleable.allowsEditingTextAttributes = allowsEditingTextAttributes
        }
    }

    /** Updates `textAlignment` property of `UITextView` instance. */
    public static func style(textAlignment: NSTextAlignment) -> Style {
        return Style("Text Alignment \(textAlignment)") {
            (styleable: UITextView) in
            styleable.textAlignment = textAlignment
        }
    }

    /** Updates `typingAttributes` property of `UITextView` instance. */
    public static func style(typingAttributes: [String : AnyObject]) -> Style {
        return Style("Typing Attributes \(typingAttributes)") {
            (styleable: UITextView) in
            styleable.typingAttributes = typingAttributes
        }
    }

    /** Updates `linkTextAttributes` property of `UITextView` instance. */
    public static func style(linkTextAttributes: [String : AnyObject]?) -> Style {
        return Style("Link Text Attributes \(linkTextAttributes)") {
            (styleable: UITextView) in
            styleable.linkTextAttributes = linkTextAttributes
        }
    }

    /** Updates `textContainerInset` property of `UITextView` instance. */
    public static func style(textContainerInset: UIEdgeInsets) -> Style {
        return Style("Text Container Inset \(textContainerInset)") {
            (styleable: UITextView) in
            styleable.textContainerInset = textContainerInset
        }
    }
}
#endif
