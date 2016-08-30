//
//  UIPageControlStyles.swift
//  Freestyler
//
//  Created by Alexander on 10.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit
import FreestylerCore


public extension ColorType {
    public var activityViewColor: Style {
        return makeColorStyle(title: "Activity Indicator Color \(self)", key: "color")
    }
}
