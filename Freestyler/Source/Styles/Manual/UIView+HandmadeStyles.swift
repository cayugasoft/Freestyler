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
    public static func styleCornerRadius(radius: CGFloat) -> Style {
        return Style("Corner Radius \(radius)") {
            (styleable: UIView) in
            styleable.layer.cornerRadius = radius
        }
    }
    
    public static func styleBorderWidth(width: CGFloat) -> Style {
        return Style("Border Width \(width)") {
            (styleable: UIView) in
            styleable.layer.borderWidth = width
        }
    }
    
    public static func styleBorderColor(color: Color?) -> Style {
        return Style("Border Color \(color)") {
            (styleable: UIView) in
            styleable.layer.borderColor = color?.color.cgColor
        }
    }
    
    public static func styleShadowColor(color: Color?) -> Style {
        return Style("Shadow Color \(color)") {
            (styleable: UIView) in
            styleable.layer.shadowColor = color?.color.cgColor
        }
    }
    
    public static func styleShadowOpacity(opacity: CGFloat) -> Style {
        return Style("Shadow Opacity \(opacity)") {
            (styleable: UIView) in
            styleable.layer.shadowOpacity = Float(opacity)
        }
    }
    
    
    public static func styleShadowOffset(offset: UIOffset) -> Style {
        return Style("Shadow Size") {
            (styleable: UIView) in
            styleable.layer.shadowOffset = CGSize(width: offset.horizontal, height: offset.vertical)
        }
    }
    
    public static func styleShadowPath(path: CGPath?) -> Style {
        return Style("Shadow Path \(path)") {
            (styleable: UIView) in
            styleable.layer.shadowPath = path
        }
    }
    
    public static func styleShadowRadius(radius: CGFloat) -> Style {
        return Style("Shadow Radius \(radius)") {
            (styleable: UIView) in
            styleable.layer.shadowRadius = radius
        }
    }
    
    public static func styleMasksToBounds(masks: Bool) -> Style {
        return Style("Masks To Bounds \(masks)") {
            (styleable: UIView) in
            styleable.layer.masksToBounds = masks
        }
    }
}
