// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-09-29 01:58:34 +0300
import UIKit
import FreestylerCore



public extension UIView {
    /** Updates `transform` property of `UIView` instance. */
    public static func styleTransform(transform: CGAffineTransform) -> Style {
        return Style("Transform \(transform)") {
            (styleable: UIView) in
            styleable.transform = transform
        }
    }

    /** Updates `backgroundColor` property of `UIView` instance. */
    public static func styleBackgroundColor(backgroundColor: ColorType?) -> Style {
        return Style("Background Color \(backgroundColor)") {
            (styleable: UIView) in
            styleable.backgroundColor = backgroundColor?.color
        }
    }

    /** Updates `tintColor` property of `UIView` instance. */
    public static func styleTintColor(tintColor: ColorType?) -> Style {
        return Style("Tint Color \(tintColor)") {
            (styleable: UIView) in
            styleable.tintColor = tintColor?.color
        }
    }
}
