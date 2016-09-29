// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-09-29 03:15:31 +0300
import UIKit
import FreestylerCore



public extension UITextField {
    /** Updates `placeholder` property of `UITextField` instance. */
    public static func stylePlaceholder(placeholder: String?) -> Style {
        return Style("Placeholder \(placeholder)") {
            (styleable: UITextField) in
            styleable.placeholder = placeholder
        }
    }

    /** Updates `attributedPlaceholder` property of `UITextField` instance. */
    public static func styleAttributedPlaceholder(attributedPlaceholder: NSAttributedString) -> Style {
        return Style("Attributed Placeholder \(attributedPlaceholder)") {
            (styleable: UITextField) in
            styleable.attributedPlaceholder = attributedPlaceholder
        }
    }

    /** Updates `defaultTextAttributes` property of `UITextField` instance. */
    public static func styleDefaultTextAttributes(defaultTextAttributes: [String : AnyObject]) -> Style {
        return Style("Default Text Attributes \(defaultTextAttributes)") {
            (styleable: UITextField) in
            styleable.defaultTextAttributes = defaultTextAttributes
        }
    }

    /** Updates `font` property of `UITextField` instance. */
    public static func styleFont(font: FontType?) -> Style {
        return Style("Font \(font)") {
            (styleable: UITextField) in
            styleable.font = font?.font
        }
    }

    /** Updates `textColor` property of `UITextField` instance. */
    public static func styleTextColor(textColor: ColorType?) -> Style {
        return Style("Text Color \(textColor)") {
            (styleable: UITextField) in
            styleable.textColor = textColor?.color
        }
    }

    /** Updates `textAlignment` property of `UITextField` instance. */
    public static func styleTextAlignment(textAlignment: NSTextAlignment) -> Style {
        return Style("Text Alignment \(textAlignment)") {
            (styleable: UITextField) in
            styleable.textAlignment = textAlignment
        }
    }

    /** Updates `typingAttributes` property of `UITextField` instance. */
    public static func styleTypingAttributes(typingAttributes: [String : AnyObject]?) -> Style {
        return Style("Typing Attributes \(typingAttributes)") {
            (styleable: UITextField) in
            styleable.typingAttributes = typingAttributes
        }
    }

    /** Updates `adjustsFontSizeToFitWidth` property of `UITextField` instance. */
    public static func styleAdjustsFontSizeToFitWidth(adjustsFontSizeToFitWidth: Bool) -> Style {
        return Style("Adjusts Font Size To Fit Width \(adjustsFontSizeToFitWidth)") {
            (styleable: UITextField) in
            styleable.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        }
    }

    /** Updates `minimumFontSize` property of `UITextField` instance. */
    public static func styleMinimumFontSize(minimumFontSize: CGFloat) -> Style {
        return Style("Minimum Font Size \(minimumFontSize)") {
            (styleable: UITextField) in
            styleable.minimumFontSize = minimumFontSize
        }
    }

    /** Updates `borderStyle` property of `UITextField` instance. */
    public static func styleBorderStyle(borderStyle: UITextBorderStyle) -> Style {
        return Style("Border Style \(borderStyle)") {
            (styleable: UITextField) in
            styleable.borderStyle = borderStyle
        }
    }

    /** Updates `background` property of `UITextField` instance. */
    public static func styleBackground(background: UIImage?) -> Style {
        return Style("Background \(background)") {
            (styleable: UITextField) in
            styleable.background = background
        }
    }

    /** Updates `disabledBackground` property of `UITextField` instance. */
    public static func styleDisabledBackground(disabledBackground: UIImage?) -> Style {
        return Style("Disabled Background \(disabledBackground)") {
            (styleable: UITextField) in
            styleable.disabledBackground = disabledBackground
        }
    }

    /** Updates `clearButtonMode` property of `UITextField` instance. */
    public static func styleClearButtonMode(clearButtonMode: UITextFieldViewMode) -> Style {
        return Style("Clear Button Mode \(clearButtonMode)") {
            (styleable: UITextField) in
            styleable.clearButtonMode = clearButtonMode
        }
    }

    /** Updates `leftViewMode` property of `UITextField` instance. */
    public static func styleLeftViewMode(leftViewMode: UITextFieldViewMode) -> Style {
        return Style("Left View Mode \(leftViewMode)") {
            (styleable: UITextField) in
            styleable.leftViewMode = leftViewMode
        }
    }

    /** Updates `rightViewMode` property of `UITextField` instance. */
    public static func styleRightViewMode(rightViewMode: UITextFieldViewMode) -> Style {
        return Style("Right View Mode \(rightViewMode)") {
            (styleable: UITextField) in
            styleable.rightViewMode = rightViewMode
        }
    }
}
