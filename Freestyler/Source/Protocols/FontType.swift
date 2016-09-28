//
//  FontType.swift
//  Freestyler
//
//  Created by Александр Долоз on 01.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit
import FreestylerCore

public protocol FontType: CustomStringConvertible {
    var font: UIFont { get }
}


extension FontType {
    public var description: String {
        return font.description
    }
}


public extension FontType {
    public var labelFont: Style {
        return Style("Label text font \(self)") {
            let label: UILabel = try typeChecker($0)
            label.font = self.font
        }
    }
}



