//
//  UIPageControlStyles.swift
//  Freestyler
//
//  Created by Alexander on 10.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit
import FreestylerCore


public extension ColorType {
    public var pageIndicatorTint: Style {
        return Style("Page Indicator Tint Color \(self)") {
            let pageControl: UIPageControl = try typeChecker($0)
            pageControl.pageIndicatorTintColor = self.color
        }
    }
    
    public var currentPageIndicatorTint: Style {
        return makeColorStyle(title: "Current Page Indicator Tint Color \(self)", key: "currentPageIndicatorTintColor")
    }
    
    internal func makeColorStyle(title title: String? = nil, key: String) -> Style {
        return Style(title) {
            let selector = Selector(key)
            guard let object = $0 as? NSObject
                where object.respondsToSelector(selector) else {
                throw StyleError.NotRespondingToSelector(selector: selector)
            }
            
            object.setValue(self.color, forKey: key)
        }
    }
}
