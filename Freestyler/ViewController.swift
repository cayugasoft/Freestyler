//
//  ViewController.swift
//  Freestyler
//
//  Created by Alexander on 03.07.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let roundCorners = Style<UIView> {
            $0.layer.cornerRadius = 5.0
        }
        let background = Style<UIView> {
            $0.backgroundColor = .yellowColor()
        }
        
        let tint = Style<UIView> {
            $0.tintColor = .redColor()
        }
        
        let totalStyle = roundCorners + background + tint
        let totalButtonStyle: Style<UIButton> = totalStyle.cast()
        
        [one, two, three].forEach {
            $0 <~ totalButtonStyle
        }
        
        let greenTint: Style<UIButton> = Style<UIView> {
            $0.tintColor = .greenColor()
        }.cast()
        
        two <~ greenTint
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

