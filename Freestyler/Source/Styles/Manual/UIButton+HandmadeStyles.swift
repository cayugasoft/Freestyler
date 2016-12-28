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


public extension UIButton {
    /**
     Changes title color of button for given control state.
     - parameter color: New title color of button
     - parameter state: Control state, default is `.normal`
 */
    public static func style(titleColor color: Color?, forControlState state: UIControlState = .normal) -> Style {
        return Style("Title Color \(color) for state \(state)") {
            (styleable: UIButton) in
            styleable.setTitleColor(color?.color, for: state)
        }
    }
    
    /**
     Changes title shadow color of button for given control state.
     - parameter color: New title shadow color of button
     - parameter state: Control state, default is `.normal`
     */
    public static func style(titleShadowColor color: Color?, forControlState state: UIControlState = .normal) -> Style {
        return Style("Title Shadow Color \(color) for state \(state)") {
            (styleable: UIButton) in
            styleable.setTitleShadowColor(color?.color, for: state)
        }
    }
    
    /**
     Changes background image of button for given control state.
     - parameter backgroundImage: New background image
     - parameter state: Control state, default is `.normal`
     */
    public static func style(backgroundImage: UIImage?, forControlState state: UIControlState = .normal) -> Style {
        return Style("Background Image \(backgroundImage) for state \(state)") {
            (styleable: UIButton) in
            styleable.setBackgroundImage(backgroundImage, for: state)
        }
    }
}
