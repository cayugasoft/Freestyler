//
//  UINavigationBarStyles.swift
//  Freestyler
//
//  Created by Alexander on 02.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit


public extension ColorType {
    public var barTint: Style {
        return Style("Bar tint \(self)") {
            guard let barTintColorable = $0 as? BarTintColorable else {
                throw StyleError.WrongType(expected: BarTintColorable.self, actual: $0.dynamicType)
            }
            
            barTintColorable.frs_setBarTintColor(self.color)
        }
    }
}


internal protocol BarTintColorable {
    func frs_setBarTintColor(color: UIColor)
}


internal protocol _BarTintColorable: class {
    var barTintColor: UIColor? { get set }
}

extension _BarTintColorable {
    func frs_setBarTintColor(color: UIColor) {
        self.barTintColor = color
    }
}


extension UINavigationBar: _BarTintColorable, BarTintColorable {}
extension UITabBar: _BarTintColorable, BarTintColorable {}
extension UIToolbar: _BarTintColorable, BarTintColorable {}
extension UISearchBar: _BarTintColorable, BarTintColorable {}

