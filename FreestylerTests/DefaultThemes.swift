//
//  DefaultThemes.swift
//  Freestyler
//
//  Created by Alexander on 02.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit
@testable import Freestyler


enum DefaultPalette: ColorType {
    case A
    case B
    
    var color: UIColor {
        switch self {
        case .A: return .blackColor()
        case .B:
            return .redColor()
        }
    }
}
