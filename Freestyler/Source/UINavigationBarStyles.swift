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
            let navigationBar: UINavigationBar = try typeChecker($0)
            navigationBar.barTintColor = self.color
        }
    }
}
