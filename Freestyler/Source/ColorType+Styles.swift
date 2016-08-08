//
//  ColorType+Styles.swift
//  Freestyler
//
//  Created by Александр Долоз on 01.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit


// MARK: UIView styles
public extension ColorType {
    
    
    public var background: Style {
        return Style("Background color \(self)") {
            let view: UIView = try typeChecker($0)
            view.backgroundColor = self.color
        }
    }
    
    public var layerShadow: Style {
        return Style("Shadow color \(self)") {
            let view: UIView = try typeChecker($0)
            view.layer.shadowColor = self.color.CGColor
        }
    }
}


