// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-09-29 01:58:34 +0300
import UIKit
import FreestylerCore



public extension UIRefreshControl {
    /** Updates `attributedTitle` property of `UIRefreshControl` instance. */
    public static func styleAttributedTitle(attributedTitle: NSAttributedString?) -> Style {
        return Style("Attributed Title \(attributedTitle)") {
            (styleable: UIRefreshControl) in
            styleable.attributedTitle = attributedTitle
        }
    }
}
