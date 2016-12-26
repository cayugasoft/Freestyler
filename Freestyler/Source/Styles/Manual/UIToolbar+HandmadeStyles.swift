//
//  UIToolbar+HandmadeStyles.swift
//  Freestyler
//
//  Created by Alexander on 29.09.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

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
