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
    public static func styleBackgroundImage(image: UIImage?, forBarPosition barPosition: UIBarPosition = .Any, barMetrics: UIBarMetrics = .Default) -> Style {
        return Style("Background Image \(image) for bar position \(barPosition), bar metrics \(barMetrics)") {
            (styleable: UIToolbar) in
            styleable.setBackgroundImage(image, forToolbarPosition: barPosition, barMetrics: barMetrics)
        }
    }
    
    public static func styleShadowImage(image: UIImage?, forBarPosition barPosition: UIBarPosition = .Any) -> Style {
        return Style("Shadow Image \(image) for bar position \(barPosition)") {
            (styleable: UIToolbar) in
            styleable.setShadowImage(image, forToolbarPosition: barPosition)
        }
    }
}
