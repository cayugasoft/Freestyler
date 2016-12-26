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
