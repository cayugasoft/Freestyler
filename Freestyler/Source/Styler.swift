//
//  Styler.swift
//  Freestyler
//
//  Created by Александр Долоз on 01.08.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit


public final class Styler {
    public typealias StylerCallback = (styleable: Styleable) -> Void
    private var callbacks: [StylerCallback] = []
}


