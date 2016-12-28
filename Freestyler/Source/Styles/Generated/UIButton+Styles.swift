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



public extension UIButton {
    /** Updates `adjustsImageWhenHighlighted` property of `UIButton` instance. */
    public static func style(adjustsImageWhenHighlighted: Bool) -> Style {
        return Style("Adjusts Image When Highlighted \(adjustsImageWhenHighlighted)") {
            (styleable: UIButton) in
            styleable.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted
        }
    }

    /** Updates `adjustsImageWhenDisabled` property of `UIButton` instance. */
    public static func style(adjustsImageWhenDisabled: Bool) -> Style {
        return Style("Adjusts Image When Disabled \(adjustsImageWhenDisabled)") {
            (styleable: UIButton) in
            styleable.adjustsImageWhenDisabled = adjustsImageWhenDisabled
        }
    }

    /** Updates `showsTouchWhenHighlighted` property of `UIButton` instance. */
    public static func style(showsTouchWhenHighlighted: Bool) -> Style {
        return Style("Shows Touch When Highlighted \(showsTouchWhenHighlighted)") {
            (styleable: UIButton) in
            styleable.showsTouchWhenHighlighted = showsTouchWhenHighlighted
        }
    }

    /** Updates `contentEdgeInsets` property of `UIButton` instance. */
    public static func style(contentEdgeInsets: UIEdgeInsets) -> Style {
        return Style("Content Edge Insets \(contentEdgeInsets)") {
            (styleable: UIButton) in
            styleable.contentEdgeInsets = contentEdgeInsets
        }
    }

    /** Updates `titleEdgeInsets` property of `UIButton` instance. */
    public static func style(titleEdgeInsets: UIEdgeInsets) -> Style {
        return Style("Title Edge Insets \(titleEdgeInsets)") {
            (styleable: UIButton) in
            styleable.titleEdgeInsets = titleEdgeInsets
        }
    }

    /** Updates `imageEdgeInsets` property of `UIButton` instance. */
    public static func style(imageEdgeInsets: UIEdgeInsets) -> Style {
        return Style("Image Edge Insets \(imageEdgeInsets)") {
            (styleable: UIButton) in
            styleable.imageEdgeInsets = imageEdgeInsets
        }
    }

    /** Updates `reversesTitleShadowWhenHighlighted` property of `UIButton` instance. */
    public static func style(reversesTitleShadowWhenHighlighted: Bool) -> Style {
        return Style("Reverses Title Shadow When Highlighted \(reversesTitleShadowWhenHighlighted)") {
            (styleable: UIButton) in
            styleable.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted
        }
    }
}
#endif
