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
//    func setBackgroundImage(UIImage?, forToolbarPosition: UIBarPosition, barMetrics: UIBarMetrics)
//    Sets the image to use for the background in a given position and with given metrics.
//    func shadowImage(forToolbarPosition: UIBarPosition)
//    Returns the image to use for the toolbar shadow in a given position.
//    func setShadowImage(UIImage?, forToolbarPosition: UIBarPosition)
//    Sets the image to use for the toolbar shadow in a given position.
    public static func style(backgroundImage image: UIImage?, forBarPosition barPosition: UIBarPosition = .any, barMetrics: UIBarMetrics = .default) -> Style {
        return Style("Background Image \(image) for bar position \(barPosition), bar metrics \(barMetrics)") {
            (styleable: UIToolbar) in
            styleable.setBackgroundImage(image, forToolbarPosition: barPosition, barMetrics: barMetrics)
        }
    }
    
    public static func style(shadowImage image: UIImage?, forBarPosition barPosition: UIBarPosition = .any) -> Style {
        return Style("Shadow Image \(image) for bar position \(barPosition)") {
            (styleable: UIToolbar) in
            styleable.setShadowImage(image, forToolbarPosition: barPosition)
        }
    }
}
