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
    public static func styleBackgroundImage(image: UIImage?, forBarPosition barPosition: UIBarPosition = .any, barMetrics: UIBarMetrics = .default) -> Style {
        return Style("Background Image \(image) for bar position \(barPosition), bar metrics \(barMetrics)") {
            (styleable: UINavigationBar) in
            styleable.setBackgroundImage(image, for: barPosition, barMetrics: barMetrics)
        }
    }
    
    public static func styleTitleVerticalPositionAdjustment(adjustment: CGFloat, barMetrics: UIBarMetrics) -> Style {
        return Style("Title Vertical Position Adjustment \(adjustment) for bar metrics \(barMetrics)") {
            (styleable: UINavigationBar) in
            styleable.setTitleVerticalPositionAdjustment(adjustment, for: barMetrics)
        }
    }
}
