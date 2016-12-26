// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-12-26 14:56:34 +0300



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
