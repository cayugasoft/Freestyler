//
//  UILabel.swift
//  Freestyler
//
//  Created by Alexander on 08.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit


public extension ColorType {
    public var text: Style {
        return Style("Text color \(self)") {
            let label: UILabel = try typeChecker($0)
            label.textColor = self.color
        }
    }
    
    public var highlightedText: Style {
        return Style("Highlighted text color \(self)") {
            let label: UILabel = try typeChecker($0)
            label.highlightedTextColor = self.color
        }
    }
    
    public var labelShadow: Style {
        return Style("Shadow text color \(self)") {
            let label: UILabel = try typeChecker($0)
            label.shadowColor = self.color
        }
    }
}





