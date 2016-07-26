//
//  ViewController.swift
//  Freestyler
//
//  Created by Alexander on 03.07.16.
//  Copyright © 2016 Alexander. All rights reserved.
//

import UIKit

enum Palette: ColorType {
    case Main, Secondary
    
    var color: UIColor {
        switch self {
        case .Main: return .redColor()
        case .Secondary: return .greenColor()
        }
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let roundCorners = Style<UIView> {
            $0.layer.cornerRadius = 5.0
        }
        let background = Style<UIView> {
            $0.backgroundColor = .yellowColor()
        }
//
        let tint = Palette.Main.tint
//
        let totalStyleOld = roundCorners + background + tint + Palette.Main.label.text
        let totalStyle: Style<UIView> = [roundCorners, background, tint]
        //let totalButtonStyle: Style<UIButton> = totalStyle
        
        [one, two, three].forEach {
            $0 <~ totalStyle
        }
        
//        let greenTint: Style<UIButton> = Style<UIView> {
//            $0.tintColor = .greenColor()
//        }.cast()
        
//        two <~ greenTint
//        
//        segmentedControl <~ Pallete.Main.tintColor
//        slider <~ Pallete.Secondary.backgroundColor + Pallete.Main.tintColor.cast().cast().cast()
        
        let viewStyle = Style<UIView> {
            $0.backgroundColor = .blackColor()
        }
        let labelStyle = Style<UILabel>(viewStyle)
//        let v2Style = Style<UIView>(labelStyle)
        segmentedControl <~ Palette.Main.tint + Palette.Secondary.background
        label <~ [Palette.Main.label.text, Palette.Secondary.background]
//        label.textColor = UIColor.redColor()
//        navigationItem.leftBarButtonItems!.forEach {
//            $0 <~ Pallete.Main.barButtonItemTintColor
//        }
        
//        navigationItem.rightBarButtonItems!.forEach {
//            $0 <~ Pallete.Secondary.barButtonItemTintColor
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

