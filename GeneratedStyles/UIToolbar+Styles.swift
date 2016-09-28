// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-09-24 01:28:07 +0300
import UIKit
import FreestylerCore



public extension UIToolbar {
    /** Updates `barStyle` property of `UIToolbar` instance. */
    public static func styleBarStyle(barStyle: UIBarStyle) -> Style {
        return Style("Bar Style \(barStyle)") {
            (styleable: UIToolbar) in
            styleable.barStyle = barStyle
        }
    }

    /** Updates `translucent` property of `UIToolbar` instance. */
    public static func styleTranslucent(translucent: Bool) -> Style {
        return Style("Translucent \(translucent)") {
            (styleable: UIToolbar) in
            styleable.translucent = translucent
        }
    }

    /** Updates `barTintColor` property of `UIToolbar` instance. */
    public static func styleBarTintColor(barTintColor: ColorType?) -> Style {
        return Style("Bar Tint Color \(barTintColor)") {
            (styleable: UIToolbar) in
            styleable.barTintColor = barTintColor?.color
        }
    }
}
