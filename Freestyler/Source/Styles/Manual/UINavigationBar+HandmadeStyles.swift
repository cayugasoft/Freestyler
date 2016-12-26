//
//  UINavigationBar+HandmadeStyles.swift
//  Freestyler
//
//  Created by Alexander on 29.09.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit
import FreestylerCore


public extension UINavigationBar {
    /**
     Changes background image of navigation bar for given bar position and bar metrics.
     - parameter image: New background image
     - parameter barPosition: Bar position, default is `.any`
     - parameter barMetrics: Bar metrics, default is `.default` (hehe)
     */
    public static func style(backgroundImage image: UIImage?, forBarPosition barPosition: UIBarPosition = .any, barMetrics: UIBarMetrics = .default) -> Style {
        return Style("Background Image \(image) for bar position \(barPosition), bar metrics \(barMetrics)") {
            (styleable: UINavigationBar) in
            styleable.setBackgroundImage(image, for: barPosition, barMetrics: barMetrics)
        }
    }
    
    /**
     Changes vertical adjustment of title for navigation bar
     - parameter adjustment: Adjustment for title
     - parameter barMetrics: Bar metrics, default is `.default`
     */
    public static func style(titleVerticalPositionAdjustment adjustment: CGFloat, barMetrics: UIBarMetrics = .default) -> Style {
        return Style("Title Vertical Position Adjustment \(adjustment) for bar metrics \(barMetrics)") {
            (styleable: UINavigationBar) in
            styleable.setTitleVerticalPositionAdjustment(adjustment, for: barMetrics)
        }
    }
}
