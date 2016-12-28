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



public extension UITableView {
    /** Updates `rowHeight` property of `UITableView` instance. */
    public static func style(rowHeight: CGFloat) -> Style {
        return Style("Row Height \(rowHeight)") {
            (styleable: UITableView) in
            styleable.rowHeight = rowHeight
        }
    }

    /** Updates `separatorStyle` property of `UITableView` instance. */
    public static func style(separatorStyle: UITableViewCellSeparatorStyle) -> Style {
        return Style("Separator Style \(separatorStyle)") {
            (styleable: UITableView) in
            styleable.separatorStyle = separatorStyle
        }
    }

    /** Updates `separatorColor` property of `UITableView` instance. */
    public static func style(separatorColor: Color?) -> Style {
        return Style("Separator Color \(separatorColor)") {
            (styleable: UITableView) in
            styleable.separatorColor = separatorColor?.color
        }
    }

    /** Updates `separatorEffect` property of `UITableView` instance. */
    public static func style(separatorEffect: UIVisualEffect?) -> Style {
        return Style("Separator Effect \(separatorEffect)") {
            (styleable: UITableView) in
            styleable.separatorEffect = separatorEffect
        }
    }

    /** Updates `backgroundView` property of `UITableView` instance. */
    public static func style(backgroundView: UIView?) -> Style {
        return Style("Background View \(backgroundView)") {
            (styleable: UITableView) in
            styleable.backgroundView = backgroundView
        }
    }

    /** Updates `separatorInset` property of `UITableView` instance. */
    public static func style(separatorInset: UIEdgeInsets) -> Style {
        return Style("Separator Inset \(separatorInset)") {
            (styleable: UITableView) in
            styleable.separatorInset = separatorInset
        }
    }

    /** Updates `cellLayoutMarginsFollowReadableWidth` property of `UITableView` instance. */
    @available(iOS 9.0, *)
    public static func style(cellLayoutMarginsFollowReadableWidth: Bool) -> Style {
        return Style("Cell Layout Margins Follow Readable Width \(cellLayoutMarginsFollowReadableWidth)") {
            (styleable: UITableView) in
            styleable.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth
        }
    }
}
#endif
