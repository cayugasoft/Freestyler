// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-12-26 13:44:02 +0300



#if os(iOS)
import UIKit
import FreestylerCore



public extension UITableView {
    /** Updates `rowHeight` property of `UITableView` instance. */
    public static func styleRowHeight(rowHeight: CGFloat) -> Style {
        return Style("Row Height \(rowHeight)") {
            (styleable: UITableView) in
            styleable.rowHeight = rowHeight
        }
    }

    /** Updates `separatorStyle` property of `UITableView` instance. */
    public static func styleSeparatorStyle(separatorStyle: UITableViewCellSeparatorStyle) -> Style {
        return Style("Separator Style \(separatorStyle)") {
            (styleable: UITableView) in
            styleable.separatorStyle = separatorStyle
        }
    }

    /** Updates `separatorColor` property of `UITableView` instance. */
    public static func styleSeparatorColor(separatorColor: Color?) -> Style {
        return Style("Separator Color \(separatorColor)") {
            (styleable: UITableView) in
            styleable.separatorColor = separatorColor?.color
        }
    }

    /** Updates `separatorEffect` property of `UITableView` instance. */
    public static func styleSeparatorEffect(separatorEffect: UIVisualEffect?) -> Style {
        return Style("Separator Effect \(separatorEffect)") {
            (styleable: UITableView) in
            styleable.separatorEffect = separatorEffect
        }
    }

    /** Updates `backgroundView` property of `UITableView` instance. */
    public static func styleBackgroundView(backgroundView: UIView?) -> Style {
        return Style("Background View \(backgroundView)") {
            (styleable: UITableView) in
            styleable.backgroundView = backgroundView
        }
    }

    /** Updates `separatorInset` property of `UITableView` instance. */
    public static func styleSeparatorInset(separatorInset: UIEdgeInsets) -> Style {
        return Style("Separator Inset \(separatorInset)") {
            (styleable: UITableView) in
            styleable.separatorInset = separatorInset
        }
    }

    /** Updates `cellLayoutMarginsFollowReadableWidth` property of `UITableView` instance. */
    public static func styleCellLayoutMarginsFollowReadableWidth(cellLayoutMarginsFollowReadableWidth: Bool) -> Style {
        return Style("Cell Layout Margins Follow Readable Width \(cellLayoutMarginsFollowReadableWidth)") {
            (styleable: UITableView) in
            styleable.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth
        }
    }
}
#endif
