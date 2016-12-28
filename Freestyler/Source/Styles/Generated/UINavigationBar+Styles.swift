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



public extension UINavigationBar {
    /** Updates `backIndicatorImage` property of `UINavigationBar` instance. */
    public static func style(backIndicatorImage: UIImage?) -> Style {
        return Style("Back Indicator Image \(backIndicatorImage)") {
            (styleable: UINavigationBar) in
            styleable.backIndicatorImage = backIndicatorImage
        }
    }

    /** Updates `backIndicatorTransitionMaskImage` property of `UINavigationBar` instance. */
    public static func style(backIndicatorTransitionMaskImage: UIImage?) -> Style {
        return Style("Back Indicator Transition Mask Image \(backIndicatorTransitionMaskImage)") {
            (styleable: UINavigationBar) in
            styleable.backIndicatorTransitionMaskImage = backIndicatorTransitionMaskImage
        }
    }

    /** Updates `barStyle` property of `UINavigationBar` instance. */
    public static func style(barStyle: UIBarStyle) -> Style {
        return Style("Bar Style \(barStyle)") {
            (styleable: UINavigationBar) in
            styleable.barStyle = barStyle
        }
    }

    /** Updates `barTintColor` property of `UINavigationBar` instance. */
    public static func style(barTintColor: Color?) -> Style {
        return Style("Bar Tint Color \(barTintColor)") {
            (styleable: UINavigationBar) in
            styleable.barTintColor = barTintColor?.color
        }
    }

    /** Updates `shadowImage` property of `UINavigationBar` instance. */
    public static func style(shadowImage: UIImage?) -> Style {
        return Style("Shadow Image \(shadowImage)") {
            (styleable: UINavigationBar) in
            styleable.shadowImage = shadowImage
        }
    }

    /** Updates `isTranslucent` property of `UINavigationBar` instance. */
    public static func style(isTranslucent: Bool) -> Style {
        return Style("Is Translucent \(isTranslucent)") {
            (styleable: UINavigationBar) in
            styleable.isTranslucent = isTranslucent
        }
    }

    /** Updates `titleTextAttributes` property of `UINavigationBar` instance. */
    public static func style(titleTextAttributes: [String: AnyObject]?) -> Style {
        return Style("Title Text Attributes \(titleTextAttributes)") {
            (styleable: UINavigationBar) in
            styleable.titleTextAttributes = titleTextAttributes
        }
    }
}
#endif
