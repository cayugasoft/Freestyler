//
//  Font.swift
//  Freestyler
//
//  Created by Alexander on 08.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit


public extension FontType {
    public var fontStyle: Style {
        return Style("Font \(self)") {
            guard let fontStyleable = $0 as? FontStyleable else {
                throw StyleError.WrongType(expected: FontStyleable.self, actual: $0.dynamicType)
            }
            fontStyleable.frs_setFont(self.font)
        }
    }
}


internal protocol FontStyleable {
    func frs_setFont(font: UIFont)
}


internal protocol _FontStyleable: class {
    var font: UIFont? { get set }
}


extension _FontStyleable {
    func frs_setFont(font: UIFont) {
        self.font = font
    }
}


extension UILabel: FontStyleable {
    func frs_setFont(font: UIFont) {
        self.font = font
    }
}

extension UITextField: _FontStyleable, FontStyleable {}
extension UITextView: _FontStyleable, FontStyleable {}



