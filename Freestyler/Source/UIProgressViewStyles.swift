//
//  UIProgressViewStyles.swift
//  Freestyler
//
//  Created by Alexander on 02.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit
import FreestylerCore


public extension ColorType {
    public var progressTint: Style {
        return Style("Progress Tint \(self)") {
            let progressView: UIProgressView = try typeChecker($0)
            progressView.progressTintColor = self.color
        }
    }
    
    public var trackTint: Style {
        return Style("Track Tint \(self)") {
            let progressView: UIProgressView = try typeChecker($0)
            progressView.trackTintColor = self.color
        }
    }
}
