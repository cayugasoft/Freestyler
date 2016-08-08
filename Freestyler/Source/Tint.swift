//
//  Tint.swift
//  Freestyler
//
//  Created by Alexander on 08.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit


public extension ColorType {
    public var tint: Style {
        return Style("Tint color \(self)") {
            guard let tintColorable = $0 as? TintColorable else {
                throw StyleError.WrongType(expected: TintColorable.self, actual: $0.dynamicType)
            }
            
            tintColorable.frs_setTintColor(self.color)
        }
    }
}


internal protocol TintColorable: Styleable {
    func frs_setTintColor(color: UIColor)
}


extension UIView: TintColorable {
    func frs_setTintColor(color: UIColor) {
        tintColor = color
    }
}


extension UIBarButtonItem: TintColorable {
    func frs_setTintColor(color: UIColor) {
        tintColor = color
    }
}