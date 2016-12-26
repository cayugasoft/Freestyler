//
//  UIView+LayerStyles.swift
//  Freestyler
//
//  Created by Alexander on 29.09.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

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
