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

import UIKit
import FreestylerCore


public extension UIToolbar {
    /**
     Changes background image of toolbar for given bar position and bar metrics.
     - parameter image: New background image
     - parameter barPosition: Bar position, default is `.any`
     - parameter barMetrics: Bar metrics, default is `.default`
     */
    public static func style(backgroundImage image: UIImage?, forBarPosition barPosition: UIBarPosition = .any, barMetrics: UIBarMetrics = .default) -> Style {
        return Style("Background Image \(image) for bar position \(barPosition), bar metrics \(barMetrics)") {
            (styleable: UIToolbar) in
            styleable.setBackgroundImage(image, forToolbarPosition: barPosition, barMetrics: barMetrics)
        }
    }
    
    /**
     Changes shadow image of toolbar for given bar position.
     - parameter image: New shadow image
     - parameter barPosition: Bar position, default is `.any`
     */
    public static func style(shadowImage image: UIImage?, forBarPosition barPosition: UIBarPosition = .any) -> Style {
        return Style("Shadow Image \(image) for bar position \(barPosition)") {
            (styleable: UIToolbar) in
            styleable.setShadowImage(image, forToolbarPosition: barPosition)
        }
    }
}
