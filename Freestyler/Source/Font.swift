//
//  FontType.swift
//  Freestyler
//
//  Created by Александр Долоз on 01.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit


/** You can use this protocol to define set of fonts commonly used in the app. For example, like this:
 
 ```
 enum Typography: Font {
    case big
    case medium
    case small
 
     var font: Font {
         switch self {
         case .big: return UIFont.systemFont(ofSize: 18.0)
         case .medium: return UIFont.systemFont(ofSize: 14.0)
         case .small: return UIFont.systemFont(ofSize: 11.0)
         }
     }
 }
 
 // ... somewhere in code
 
 label <~ UILabel.style(font: Typography.big)
 ```
 Notice that `UIFont` also conforms to `Font` so for every style expecting `Font` you can pass `UIFont` instance.
 */
public protocol Font: CustomStringConvertible {
    var font: UIFont { get }
}


public extension Font {
    public var description: String {
        UIFont.systemFont(ofSize: 18.0)
        
        return font.description
    }
}


extension UIFont: Font {
    public var font: UIFont { return self }
}



