// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-09-29 00:13:37 +0300
import UIKit
import FreestylerCore



public extension UITableViewCell {
    /** Updates `backgroundView` property of `UITableViewCell` instance. */
    public static func styleBackgroundView(backgroundView: UIView?) -> Style {
        return Style("Background View \(backgroundView)") {
            (styleable: UITableViewCell) in
            styleable.backgroundView = backgroundView
        }
    }

    /** Updates `selectedBackgroundView` property of `UITableViewCell` instance. */
    public static func styleSelectedBackgroundView(selectedBackgroundView: UIView?) -> Style {
        return Style("Selected Background View \(selectedBackgroundView)") {
            (styleable: UITableViewCell) in
            styleable.selectedBackgroundView = selectedBackgroundView
        }
    }

    /** Updates `multipleSelectionBackgroundView` property of `UITableViewCell` instance. */
    public static func styleMultipleSelectionBackgroundView(multipleSelectionBackgroundView: UIView?) -> Style {
        return Style("Multiple Selection Background View \(multipleSelectionBackgroundView)") {
            (styleable: UITableViewCell) in
            styleable.multipleSelectionBackgroundView = multipleSelectionBackgroundView
        }
    }

    /** Updates `accessoryType` property of `UITableViewCell` instance. */
    public static func styleAccessoryType(accessoryType: UITableViewCellAccessoryType) -> Style {
        return Style("Accessory Type \(accessoryType)") {
            (styleable: UITableViewCell) in
            styleable.accessoryType = accessoryType
        }
    }

    /** Updates `accessoryView` property of `UITableViewCell` instance. */
    public static func styleAccessoryView(accessoryView: UIView?) -> Style {
        return Style("Accessory View \(accessoryView)") {
            (styleable: UITableViewCell) in
            styleable.accessoryView = accessoryView
        }
    }

    /** Updates `editingAccessoryType` property of `UITableViewCell` instance. */
    public static func styleEditingAccessoryType(editingAccessoryType: UITableViewCellAccessoryType) -> Style {
        return Style("Editing Accessory Type \(editingAccessoryType)") {
            (styleable: UITableViewCell) in
            styleable.editingAccessoryType = editingAccessoryType
        }
    }

    /** Updates `editingAccessoryView` property of `UITableViewCell` instance. */
    public static func styleEditingAccessoryView(editingAccessoryView: UIView?) -> Style {
        return Style("Editing Accessory View \(editingAccessoryView)") {
            (styleable: UITableViewCell) in
            styleable.editingAccessoryView = editingAccessoryView
        }
    }

    /** Updates `showsReorderControl` property of `UITableViewCell` instance. */
    public static func styleShowsReorderControl(showsReorderControl: Bool) -> Style {
        return Style("Shows Reorder Control \(showsReorderControl)") {
            (styleable: UITableViewCell) in
            styleable.showsReorderControl = showsReorderControl
        }
    }

    /** Updates `indentationLevel` property of `UITableViewCell` instance. */
    public static func styleIndentationLevel(indentationLevel: Int) -> Style {
        return Style("Indentation Level \(indentationLevel)") {
            (styleable: UITableViewCell) in
            styleable.indentationLevel = indentationLevel
        }
    }

    /** Updates `indentationWidth` property of `UITableViewCell` instance. */
    public static func styleIndentationWidth(indentationWidth: CGFloat) -> Style {
        return Style("Indentation Width \(indentationWidth)") {
            (styleable: UITableViewCell) in
            styleable.indentationWidth = indentationWidth
        }
    }

    /** Updates `shouldIndentWhileEditing` property of `UITableViewCell` instance. */
    public static func styleShouldIndentWhileEditing(shouldIndentWhileEditing: Bool) -> Style {
        return Style("Should Indent While Editing \(shouldIndentWhileEditing)") {
            (styleable: UITableViewCell) in
            styleable.shouldIndentWhileEditing = shouldIndentWhileEditing
        }
    }

    /** Updates `separatorInset` property of `UITableViewCell` instance. */
    public static func styleSeparatorInset(separatorInset: UIEdgeInsets) -> Style {
        return Style("Separator Inset \(separatorInset)") {
            (styleable: UITableViewCell) in
            styleable.separatorInset = separatorInset
        }
    }
}