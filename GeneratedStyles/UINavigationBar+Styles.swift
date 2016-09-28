// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-09-24 01:28:07 +0300
import UIKit
import FreestylerCore



public extension UINavigationBar {
    /** Updates `backIndicatorImage` property of `UINavigationBar` instance. */
    public static func styleBackIndicatorImage(backIndicatorImage: UIImage?) -> Style {
        return Style("Back Indicator Image \(backIndicatorImage)") {
            (styleable: UINavigationBar) in
            styleable.backIndicatorImage = backIndicatorImage
        }
    }

    /** Updates `backIndicatorTransitionMaskImage` property of `UINavigationBar` instance. */
    public static func styleBackIndicatorTransitionMaskImage(backIndicatorTransitionMaskImage: UIImage?) -> Style {
        return Style("Back Indicator Transition Mask Image \(backIndicatorTransitionMaskImage)") {
            (styleable: UINavigationBar) in
            styleable.backIndicatorTransitionMaskImage = backIndicatorTransitionMaskImage
        }
    }

    /** Updates `barStyle` property of `UINavigationBar` instance. */
    public static func styleBarStyle(barStyle: UIBarStyle) -> Style {
        return Style("Bar Style \(barStyle)") {
            (styleable: UINavigationBar) in
            styleable.barStyle = barStyle
        }
    }

    /** Updates `barTintColor` property of `UINavigationBar` instance. */
    public static func styleBarTintColor(barTintColor: ColorType?) -> Style {
        return Style("Bar Tint Color \(barTintColor)") {
            (styleable: UINavigationBar) in
            styleable.barTintColor = barTintColor?.color
        }
    }

    /** Updates `shadowImage` property of `UINavigationBar` instance. */
    public static func styleShadowImage(shadowImage: UIImage?) -> Style {
        return Style("Shadow Image \(shadowImage)") {
            (styleable: UINavigationBar) in
            styleable.shadowImage = shadowImage
        }
    }

    /** Updates `translucent` property of `UINavigationBar` instance. */
    public static func styleTranslucent(translucent: Bool) -> Style {
        return Style("Translucent \(translucent)") {
            (styleable: UINavigationBar) in
            styleable.translucent = translucent
        }
    }

    /** Updates `titleTextAttributes` property of `UINavigationBar` instance. */
    public static func styleTitleTextAttributes(titleTextAttributes: [String: AnyObject]?) -> Style {
        return Style("Title Text Attributes \(titleTextAttributes)") {
            (styleable: UINavigationBar) in
            styleable.titleTextAttributes = titleTextAttributes
        }
    }
}
