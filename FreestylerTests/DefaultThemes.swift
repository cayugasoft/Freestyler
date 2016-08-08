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
        case .B: return .redColor()
        }
    }
}


enum DefaultTypography: FontType {
    case A
    case B
    
    var font: UIFont {
        let defaultFont = UIFont.systemFontOfSize(24.0)
        switch self {
        case .A: return UIFont(name: "AmericanTypewriter", size: 20.0) ?? defaultFont
        case .B: return UIFont(name: "AppleSDGothicNeo-Regular", size: 14.0) ?? defaultFont
        }
    }
}