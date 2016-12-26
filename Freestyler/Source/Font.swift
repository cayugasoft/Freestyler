//
//  FontType.swift
//  Freestyler
//
//  Created by Александр Долоз on 01.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit


public protocol Font: CustomStringConvertible {
    var font: UIFont { get }
}


public extension Font {
    public var description: String {
        return font.description
    }
}


extension UIFont: Font {
    public var font: UIFont { return self }
}



