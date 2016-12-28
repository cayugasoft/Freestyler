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



public extension UILabel {
    /** Updates `textColor` property of `UILabel` instance. */
    public static func style(textColor: Color?) -> Style {
        return Style("Text Color \(textColor)") {
            (styleable: UILabel) in
            styleable.textColor = textColor?.color
        }
    }

    /** Updates `font` property of `UILabel` instance. */
    public static func style(font: Font?) -> Style {
        return Style("Font \(font)") {
            (styleable: UILabel) in
            styleable.font = font?.font
        }
    }

    /** Updates `textAlignment` property of `UILabel` instance. */
    public static func style(textAlignment: NSTextAlignment) -> Style {
        return Style("Text Alignment \(textAlignment)") {
            (styleable: UILabel) in
            styleable.textAlignment = textAlignment
        }
    }

    /** Updates `lineBreakMode` property of `UILabel` instance. */
    public static func style(lineBreakMode: NSLineBreakMode) -> Style {
        return Style("Line Break Mode \(lineBreakMode)") {
            (styleable: UILabel) in
            styleable.lineBreakMode = lineBreakMode
        }
    }

    /** Updates `adjustsFontSizeToFitWidth` property of `UILabel` instance. */
    public static func style(adjustsFontSizeToFitWidth: Bool) -> Style {
        return Style("Adjusts Font Size To Fit Width \(adjustsFontSizeToFitWidth)") {
            (styleable: UILabel) in
            styleable.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        }
    }

    /** Updates `allowsDefaultTighteningForTruncation` property of `UILabel` instance. */
    public static func style(allowsDefaultTighteningForTruncation: Bool) -> Style {
        return Style("Allows Default Tightening For Truncation \(allowsDefaultTighteningForTruncation)") {
            (styleable: UILabel) in
            styleable.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        }
    }

    /** Updates `baselineAdjustment` property of `UILabel` instance. */
    public static func style(baselineAdjustment: UIBaselineAdjustment) -> Style {
        return Style("Baseline Adjustment \(baselineAdjustment)") {
            (styleable: UILabel) in
            styleable.baselineAdjustment = baselineAdjustment
        }
    }

    /** Updates `minimumScaleFactor` property of `UILabel` instance. */
    public static func style(minimumScaleFactor: CGFloat) -> Style {
        return Style("Minimum Scale Factor \(minimumScaleFactor)") {
            (styleable: UILabel) in
            styleable.minimumScaleFactor = minimumScaleFactor
        }
    }

    /** Updates `numberOfLines` property of `UILabel` instance. */
    public static func style(numberOfLines: Int) -> Style {
        return Style("Number Of Lines \(numberOfLines)") {
            (styleable: UILabel) in
            styleable.numberOfLines = numberOfLines
        }
    }

    /** Updates `highlightedTextColor` property of `UILabel` instance. */
    public static func style(highlightedTextColor: Color?) -> Style {
        return Style("Highlighted Text Color \(highlightedTextColor)") {
            (styleable: UILabel) in
            styleable.highlightedTextColor = highlightedTextColor?.color
        }
    }

    /** Updates `shadowColor` property of `UILabel` instance. */
    public static func style(shadowColor: Color) -> Style {
        return Style("Shadow Color \(shadowColor)") {
            (styleable: UILabel) in
            styleable.shadowColor = shadowColor.color
        }
    }

    /** Updates `shadowOffset` property of `UILabel` instance. */
    public static func style(shadowOffset: CGSize) -> Style {
        return Style("Shadow Offset \(shadowOffset)") {
            (styleable: UILabel) in
            styleable.shadowOffset = shadowOffset
        }
    }

    /** Updates `preferredMaxLayoutWidth` property of `UILabel` instance. */
    public static func style(preferredMaxLayoutWidth: CGFloat) -> Style {
        return Style("Preferred Max Layout Width \(preferredMaxLayoutWidth)") {
            (styleable: UILabel) in
            styleable.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        }
    }
}
#endif
