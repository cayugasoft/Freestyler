// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-12-26 14:56:34 +0300



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
