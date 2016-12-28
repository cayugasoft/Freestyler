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



public extension UIProgressView {
    /** Updates `progressViewStyle` property of `UIProgressView` instance. */
    public static func style(progressViewStyle: UIProgressViewStyle) -> Style {
        return Style("Progress View Style \(progressViewStyle)") {
            (styleable: UIProgressView) in
            styleable.progressViewStyle = progressViewStyle
        }
    }

    /** Updates `progressTintColor` property of `UIProgressView` instance. */
    public static func style(progressTintColor: Color?) -> Style {
        return Style("Progress Tint Color \(progressTintColor)") {
            (styleable: UIProgressView) in
            styleable.progressTintColor = progressTintColor?.color
        }
    }

    /** Updates `progressImage` property of `UIProgressView` instance. */
    public static func style(progressImage: UIImage?) -> Style {
        return Style("Progress Image \(progressImage)") {
            (styleable: UIProgressView) in
            styleable.progressImage = progressImage
        }
    }

    /** Updates `trackTintColor` property of `UIProgressView` instance. */
    public static func style(trackTintColor: Color?) -> Style {
        return Style("Track Tint Color \(trackTintColor)") {
            (styleable: UIProgressView) in
            styleable.trackTintColor = trackTintColor?.color
        }
    }

    /** Updates `trackImage` property of `UIProgressView` instance. */
    public static func style(trackImage: UIImage?) -> Style {
        return Style("Track Image \(trackImage)") {
            (styleable: UIProgressView) in
            styleable.trackImage = trackImage
        }
    }
}
#endif
