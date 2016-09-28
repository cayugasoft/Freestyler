// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-09-29 00:13:37 +0300
import UIKit
import FreestylerCore



public extension UISwitch {
    /** Updates `onTintColor` property of `UISwitch` instance. */
    public static func styleOnTintColor(onTintColor: ColorType?) -> Style {
        return Style("On Tint Color \(onTintColor)") {
            (styleable: UISwitch) in
            styleable.onTintColor = onTintColor?.color
        }
    }

    /** Updates `thumbTintColor` property of `UISwitch` instance. */
    public static func styleThumbTintColor(thumbTintColor: ColorType?) -> Style {
        return Style("Thumb Tint Color \(thumbTintColor)") {
            (styleable: UISwitch) in
            styleable.thumbTintColor = thumbTintColor?.color
        }
    }

    /** Updates `onImage` property of `UISwitch` instance. */
    public static func styleOnImage(onImage: UIImage?) -> Style {
        return Style("On Image \(onImage)") {
            (styleable: UISwitch) in
            styleable.onImage = onImage
        }
    }

    /** Updates `offImage` property of `UISwitch` instance. */
    public static func styleOffImage(offImage: UIImage?) -> Style {
        return Style("Off Image \(offImage)") {
            (styleable: UISwitch) in
            styleable.offImage = offImage
        }
    }
}