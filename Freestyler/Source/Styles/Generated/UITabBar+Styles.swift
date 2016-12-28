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



public extension UITabBar {
    /** Updates `barStyle` property of `UITabBar` instance. */
    public static func style(barStyle: UIBarStyle) -> Style {
        return Style("Bar Style \(barStyle)") {
            (styleable: UITabBar) in
            styleable.barStyle = barStyle
        }
    }

    /** Updates `isTranslucent` property of `UITabBar` instance. */
    public static func style(isTranslucent: Bool) -> Style {
        return Style("Is Translucent \(isTranslucent)") {
            (styleable: UITabBar) in
            styleable.isTranslucent = isTranslucent
        }
    }

    /** Updates `barTintColor` property of `UITabBar` instance. */
    public static func style(barTintColor: Color?) -> Style {
        return Style("Bar Tint Color \(barTintColor)") {
            (styleable: UITabBar) in
            styleable.barTintColor = barTintColor?.color
        }
    }

    /** Updates `itemPositioning` property of `UITabBar` instance. */
    public static func style(itemPositioning: UITabBarItemPositioning) -> Style {
        return Style("Item Positioning \(itemPositioning)") {
            (styleable: UITabBar) in
            styleable.itemPositioning = itemPositioning
        }
    }

    /** Updates `itemSpacing` property of `UITabBar` instance. */
    public static func style(itemSpacing: CGFloat) -> Style {
        return Style("Item Spacing \(itemSpacing)") {
            (styleable: UITabBar) in
            styleable.itemSpacing = itemSpacing
        }
    }

    /** Updates `itemWidth` property of `UITabBar` instance. */
    public static func style(itemWidth: CGFloat) -> Style {
        return Style("Item Width \(itemWidth)") {
            (styleable: UITabBar) in
            styleable.itemWidth = itemWidth
        }
    }

    /** Updates `backgroundImage` property of `UITabBar` instance. */
    public static func style(backgroundImage: UIImage?) -> Style {
        return Style("Background Image \(backgroundImage)") {
            (styleable: UITabBar) in
            styleable.backgroundImage = backgroundImage
        }
    }

    /** Updates `shadowImage` property of `UITabBar` instance. */
    public static func style(shadowImage: UIImage?) -> Style {
        return Style("Shadow Image \(shadowImage)") {
            (styleable: UITabBar) in
            styleable.shadowImage = shadowImage
        }
    }

    /** Updates `selectionIndicatorImage` property of `UITabBar` instance. */
    public static func style(selectionIndicatorImage: UIImage?) -> Style {
        return Style("Selection Indicator Image \(selectionIndicatorImage)") {
            (styleable: UITabBar) in
            styleable.selectionIndicatorImage = selectionIndicatorImage
        }
    }
}
#endif
