//
//  UISliderStyles.swift
//  Freestyler
//
//  Created by Alexander on 10.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit


public extension ColorType {
    public var minimumTrackTint: Style {
        return Style("Minimum Track Tint Color \(self)") {
            let slider: UISlider = try typeChecker($0)
            slider.minimumTrackTintColor = self.color
        }
    }
    
    public var maximumTrackTint: Style {
        return Style("Maximum Track Tint Color \(self)") {
            let slider: UISlider = try typeChecker($0)
            slider.maximumTrackTintColor = self.color
        }
    }
    
    public var thumbTrackTint: Style {
        return Style("Thumb Track Tint Color \(self)") {
            let slider: UISlider = try typeChecker($0)
            slider.thumbTintColor = self.color
        }
    }
}
