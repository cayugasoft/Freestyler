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



public extension UIScrollView {
    /** Updates `indicatorStyle` property of `UIScrollView` instance. */
    public static func style(indicatorStyle: UIScrollViewIndicatorStyle) -> Style {
        return Style("Indicator Style \(indicatorStyle)") {
            (styleable: UIScrollView) in
            styleable.indicatorStyle = indicatorStyle
        }
    }

    /** Updates `scrollIndicatorInsets` property of `UIScrollView` instance. */
    public static func style(scrollIndicatorInsets: UIEdgeInsets) -> Style {
        return Style("Scroll Indicator Insets \(scrollIndicatorInsets)") {
            (styleable: UIScrollView) in
            styleable.scrollIndicatorInsets = scrollIndicatorInsets
        }
    }

    /** Updates `showsHorizontalScrollIndicator` property of `UIScrollView` instance. */
    public static func style(showsHorizontalScrollIndicator: Bool) -> Style {
        return Style("Shows Horizontal Scroll Indicator \(showsHorizontalScrollIndicator)") {
            (styleable: UIScrollView) in
            styleable.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        }
    }

    /** Updates `showsVerticalScrollIndicator` property of `UIScrollView` instance. */
    public static func style(showsVerticalScrollIndicator: Bool) -> Style {
        return Style("Shows Vertical Scroll Indicator \(showsVerticalScrollIndicator)") {
            (styleable: UIScrollView) in
            styleable.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        }
    }

    /** Updates `bounces` property of `UIScrollView` instance. */
    public static func style(bounces: Bool) -> Style {
        return Style("Bounces \(bounces)") {
            (styleable: UIScrollView) in
            styleable.bounces = bounces
        }
    }

    /** Updates `alwaysBounceVertical` property of `UIScrollView` instance. */
    public static func style(alwaysBounceVertical: Bool) -> Style {
        return Style("Always Bounce Vertical \(alwaysBounceVertical)") {
            (styleable: UIScrollView) in
            styleable.alwaysBounceVertical = alwaysBounceVertical
        }
    }

    /** Updates `alwaysBounceHorizontal` property of `UIScrollView` instance. */
    public static func style(alwaysBounceHorizontal: Bool) -> Style {
        return Style("Always Bounce Horizontal \(alwaysBounceHorizontal)") {
            (styleable: UIScrollView) in
            styleable.alwaysBounceHorizontal = alwaysBounceHorizontal
        }
    }

    /** Updates `decelerationRate` property of `UIScrollView` instance. */
    public static func style(decelerationRate: CGFloat) -> Style {
        return Style("Deceleration Rate \(decelerationRate)") {
            (styleable: UIScrollView) in
            styleable.decelerationRate = decelerationRate
        }
    }

    /** Updates `contentInset` property of `UIScrollView` instance. */
    public static func style(contentInset: UIEdgeInsets) -> Style {
        return Style("Content Inset \(contentInset)") {
            (styleable: UIScrollView) in
            styleable.contentInset = contentInset
        }
    }

    /** Updates `keyboardDismissMode` property of `UIScrollView` instance. */
    public static func style(keyboardDismissMode: UIScrollViewKeyboardDismissMode) -> Style {
        return Style("Keyboard Dismiss Mode \(keyboardDismissMode)") {
            (styleable: UIScrollView) in
            styleable.keyboardDismissMode = keyboardDismissMode
        }
    }
}
#endif
