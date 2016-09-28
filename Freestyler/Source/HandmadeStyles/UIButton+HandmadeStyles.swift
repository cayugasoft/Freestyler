//
//  UIButton+Styles.swift
//  Freestyler
//
//  Created by Alexander on 29.09.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit
import FreestylerCore


public extension UIButton {
    public static func styleTitleColor(color: ColorType?, forControlState state: UIControlState = .Normal) -> Style {
        return Style("Title Color \(color) for state \(state)") {
            (styleable: UIButton) in
            styleable.setTitleColor(color?.color, forState: state)
        }
    }
    
    public static func styleTitleShadowColor(color: ColorType?, forControlState state: UIControlState = .Normal) -> Style {
        return Style("Title Shadow Color \(color) for state \(state)") {
            (styleable: UIButton) in
            styleable.setTitleShadowColor(color?.color, forState: state)
        }
    }
    
    
    public static func styleBackgroundImage(backgroundImage: UIImage?, forControlState state: UIControlState = .Normal) -> Style {
        return Style("Background Image \(backgroundImage) for state \(state)") {
            (styleable: UIButton) in
            styleable.setBackgroundImage(backgroundImage, forState: state)
        }
    }
    
    public static func styleImage(image: UIImage?, forControlState state: UIControlState = .Normal) -> Style {
        return Style("Image \(image) for state \(state)") {
            (styleable: UIButton) in
            styleable.setImage(image, forState: state)
        }
    }    
}
