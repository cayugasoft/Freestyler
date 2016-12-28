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


public extension UIView {
    /**
     Changes corner radius of view.
     - parameter radius: New corner radius
     */
    public static func style(cornerRadius radius: CGFloat) -> Style {
        return Style("Corner Radius \(radius)") {
            (styleable: UIView) in
            styleable.layer.cornerRadius = radius
        }
    }
    
    /**
     Changes border width of view.
     - parameter width: New border width
     */
    public static func style(borderWidth width: CGFloat) -> Style {
        return Style("Border Width \(width)") {
            (styleable: UIView) in
            styleable.layer.borderWidth = width
        }
    }
    
    /**
     Changes border color of view.
     - parameter color: New border color
     */
    public static func style(borderColor color: Color?) -> Style {
        return Style("Border Color \(color)") {
            (styleable: UIView) in
            styleable.layer.borderColor = color?.color.cgColor
        }
    }
    
    /**
     Changes shadow color of view.
     - parameter color: New shadow color
     */
    public static func style(shadowColor color: Color?) -> Style {
        return Style("Shadow Color \(color)") {
            (styleable: UIView) in
            styleable.layer.shadowColor = color?.color.cgColor
        }
    }
    
    /**
     Changes shadow opacity of view.
     - parameter opacity: New shadow opacity
     */
    public static func style(shadowOpacity opacity: CGFloat) -> Style {
        return Style("Shadow Opacity \(opacity)") {
            (styleable: UIView) in
            styleable.layer.shadowOpacity = Float(opacity)
        }
    }
    
    /**
     Changes shadow offset of view.
     - parameter offset: New shadow offset
     */
    public static func style(shadowOffset offset: UIOffset) -> Style {
        return Style("Shadow Size") {
            (styleable: UIView) in
            styleable.layer.shadowOffset = CGSize(width: offset.horizontal, height: offset.vertical)
        }
    }
    
    /**
     Changes shadow path of view.
     - parameter path: New shadow path
     */
    public static func style(shadowPath path: CGPath?) -> Style {
        return Style("Shadow Path \(path)") {
            (styleable: UIView) in
            styleable.layer.shadowPath = path
        }
    }
    
    /**
     Changes shadow radius of view.
     - parameter radius: New shadow radius
     */
    public static func style(shadowRadius radius: CGFloat) -> Style {
        return Style("Shadow Radius \(radius)") {
            (styleable: UIView) in
            styleable.layer.shadowRadius = radius
        }
    }
    
    /**
     Changes if view masks to bounds
     */
    public static func style(masksToBounds masks: Bool) -> Style {
        return Style("Masks To Bounds \(masks)") {
            (styleable: UIView) in
            styleable.layer.masksToBounds = masks
        }
    }
}
