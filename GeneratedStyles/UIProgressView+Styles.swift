// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-09-24 00:35:39 +0300
import UIKit
import FreestylerCore



public extension UIProgressView {
    /** Updates `progressViewStyle` property of `UIProgressView` instance. */
    public static func progressViewStyle(progressViewStyle: UIProgressViewStyle) -> Style {
        return Style("Progress View Style \(progressViewStyle)") {
            (styleable: UIProgressView) in
            styleable.progressViewStyle = progressViewStyle
        }
    }

    /** Updates `progressTintColor` property of `UIProgressView` instance. */
    public static func progressTintColor(progressTintColor: ColorType?) -> Style {
        return Style("Progress Tint Color \(progressTintColor)") {
            (styleable: UIProgressView) in
            styleable.progressTintColor = progressTintColor?.color
        }
    }

    /** Updates `progressImage` property of `UIProgressView` instance. */
    public static func progressImage(progressImage: UIImage?) -> Style {
        return Style("Progress Image \(progressImage)") {
            (styleable: UIProgressView) in
            styleable.progressImage = progressImage
        }
    }

    /** Updates `trackTintColor` property of `UIProgressView` instance. */
    public static func trackTintColor(trackTintColor: ColorType?) -> Style {
        return Style("Track Tint Color \(trackTintColor)") {
            (styleable: UIProgressView) in
            styleable.trackTintColor = trackTintColor?.color
        }
    }

    /** Updates `trackImage` property of `UIProgressView` instance. */
    public static func trackImage(trackImage: UIImage?) -> Style {
        return Style("Track Image \(trackImage)") {
            (styleable: UIProgressView) in
            styleable.trackImage = trackImage
        }
    }
}
