// The MIT License (MIT)
// 
// Copyright (c) Copyright © 2016 Cayugasoft Technologies
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#if os(iOS)
import UIKit
import FreestylerCore



public extension UITableViewCell {
    /** Updates `backgroundView` property of `UITableViewCell` instance. */
    public static func style(backgroundView: UIView?) -> Style {
        return Style("Background View \(backgroundView)") {
            (styleable: UITableViewCell) in
            styleable.backgroundView = backgroundView
        }
    }

    /** Updates `selectedBackgroundView` property of `UITableViewCell` instance. */
    public static func style(selectedBackgroundView: UIView?) -> Style {
        return Style("Selected Background View \(selectedBackgroundView)") {
            (styleable: UITableViewCell) in
            styleable.selectedBackgroundView = selectedBackgroundView
        }
    }

    /** Updates `multipleSelectionBackgroundView` property of `UITableViewCell` instance. */
    public static func style(multipleSelectionBackgroundView: UIView?) -> Style {
        return Style("Multiple Selection Background View \(multipleSelectionBackgroundView)") {
            (styleable: UITableViewCell) in
            styleable.multipleSelectionBackgroundView = multipleSelectionBackgroundView
        }
    }

    /** Updates `accessoryType` property of `UITableViewCell` instance. */
    public static func style(accessoryType: UITableViewCellAccessoryType) -> Style {
        return Style("Accessory Type \(accessoryType)") {
            (styleable: UITableViewCell) in
            styleable.accessoryType = accessoryType
        }
    }

    /** Updates `accessoryView` property of `UITableViewCell` instance. */
    public static func style(accessoryView: UIView?) -> Style {
        return Style("Accessory View \(accessoryView)") {
            (styleable: UITableViewCell) in
            styleable.accessoryView = accessoryView
        }
    }

    /** Updates `editingAccessoryType` property of `UITableViewCell` instance. */
    public static func style(editingAccessoryType: UITableViewCellAccessoryType) -> Style {
        return Style("Editing Accessory Type \(editingAccessoryType)") {
            (styleable: UITableViewCell) in
            styleable.editingAccessoryType = editingAccessoryType
        }
    }

    /** Updates `editingAccessoryView` property of `UITableViewCell` instance. */
    public static func style(editingAccessoryView: UIView?) -> Style {
        return Style("Editing Accessory View \(editingAccessoryView)") {
            (styleable: UITableViewCell) in
            styleable.editingAccessoryView = editingAccessoryView
        }
    }

    /** Updates `showsReorderControl` property of `UITableViewCell` instance. */
    public static func style(showsReorderControl: Bool) -> Style {
        return Style("Shows Reorder Control \(showsReorderControl)") {
            (styleable: UITableViewCell) in
            styleable.showsReorderControl = showsReorderControl
        }
    }

    /** Updates `indentationLevel` property of `UITableViewCell` instance. */
    public static func style(indentationLevel: Int) -> Style {
        return Style("Indentation Level \(indentationLevel)") {
            (styleable: UITableViewCell) in
            styleable.indentationLevel = indentationLevel
        }
    }

    /** Updates `indentationWidth` property of `UITableViewCell` instance. */
    public static func style(indentationWidth: CGFloat) -> Style {
        return Style("Indentation Width \(indentationWidth)") {
            (styleable: UITableViewCell) in
            styleable.indentationWidth = indentationWidth
        }
    }

    /** Updates `shouldIndentWhileEditing` property of `UITableViewCell` instance. */
    public static func style(shouldIndentWhileEditing: Bool) -> Style {
        return Style("Should Indent While Editing \(shouldIndentWhileEditing)") {
            (styleable: UITableViewCell) in
            styleable.shouldIndentWhileEditing = shouldIndentWhileEditing
        }
    }

    /** Updates `separatorInset` property of `UITableViewCell` instance. */
    public static func style(separatorInset: UIEdgeInsets) -> Style {
        return Style("Separator Inset \(separatorInset)") {
            (styleable: UITableViewCell) in
            styleable.separatorInset = separatorInset
        }
    }
}
#endif
