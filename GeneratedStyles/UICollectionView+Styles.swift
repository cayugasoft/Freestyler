// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-09-22 16:31:52 +0300
import UIKit
import FreestylerCore



public extension UICollectionView {
    /** Updates `backgroundView` property of `UICollectionView` instance. */
    public static func backgroundView(backgroundView: UIView?) -> Style {
        return Style("Background View \(backgroundView)") {
            (styleable: UICollectionView) in
            styleable.backgroundView = backgroundView
        }
    }
}
