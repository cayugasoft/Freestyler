// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-12-26 13:44:02 +0300



#if os(iOS)
import UIKit
import FreestylerCore



public extension UIProgressView {
    /** Updates `progressViewStyle` property of `UIProgressView` instance. */
    public static func styleProgressViewStyle(progressViewStyle: UIProgressViewStyle) -> Style {
        return Style("Progress View Style \(progressViewStyle)") {
            (styleable: UIProgressView) in
            styleable.progressViewStyle = progressViewStyle
        }
    }

    /** Updates `progressTintColor` property of `UIProgressView` instance. */
    public static func styleProgressTintColor(progressTintColor: Color?) -> Style {
        return Style("Progress Tint Color \(progressTintColor)") {
            (styleable: UIProgressView) in
            styleable.progressTintColor = progressTintColor?.color
        }
    }

    /** Updates `progressImage` property of `UIProgressView` instance. */
    public static func styleProgressImage(progressImage: UIImage?) -> Style {
        return Style("Progress Image \(progressImage)") {
            (styleable: UIProgressView) in
            styleable.progressImage = progressImage
        }
    }

    /** Updates `trackTintColor` property of `UIProgressView` instance. */
    public static func styleTrackTintColor(trackTintColor: Color?) -> Style {
        return Style("Track Tint Color \(trackTintColor)") {
            (styleable: UIProgressView) in
            styleable.trackTintColor = trackTintColor?.color
        }
    }

    /** Updates `trackImage` property of `UIProgressView` instance. */
    public static func styleTrackImage(trackImage: UIImage?) -> Style {
        return Style("Track Image \(trackImage)") {
            (styleable: UIProgressView) in
            styleable.trackImage = trackImage
        }
    }
}
#endif
