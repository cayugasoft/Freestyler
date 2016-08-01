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
    @IBOutlet weak var addButton: UIBarButtonItem!
    /*
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
        let totalStyleOld = roundCorners + background + tint// + Palette.Main.label.text
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
*/
    

    @IBAction func oneDown(sender: AnyObject) {
        
        [self.one, self.two, self.three].forEach { button in
            UIView.animateWithDuration(5) {
                button.layer.shadowOpacity = 0.0
                button.layer.shadowOffset = CGSizeZero
            }
        }
        
    }
    
    @IBAction func oneUp(sender: AnyObject) {
        UIView.animateWithDuration(0.5) {
            [self.one, self.two, self.three].forEach {
                $0.layer.shadowOpacity = 1.0
                $0.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        debugBehavior = .Crash
        
        let roundCorners = Style("Round Corners") {
            let view: UIView = try typeChecker($0)
            view.layer.cornerRadius = 10.0
        }

        let shadow = Style("Shadow") {
            let view: UIView = try typeChecker($0)
            view.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
            view.layer.shadowOpacity = 1.0
            view.layer.shadowColor = UIColor.blackColor().CGColor
        }
        
        
        [one, two, three].forEach {
            $0 <~ roundCorners + Palette.Main.background + shadow
        }
        
        let coolLabelStyle = Style {
            let label: UILabel = try typeChecker($0)
            label.textAlignment = .Right
            label.textColor = Palette.Main.color
            label.font = UIFont.systemFontOfSize(24.0, weight: 3.0)
            label.shadowOffset = CGSize(width: 1.0, height: 1.0)
            label.shadowColor = Palette.Secondary.color
        }
        
        slider <~ Palette.Secondary.tint
        
        let masksToBounds = Style("Masks To Bounds") {
            let view: UIView = try typeChecker($0)
            view.layer.masksToBounds = true
        }
        let center = Style("Center text align") {
            let label: UILabel = try typeChecker($0)
            label.textAlignment = .Center
        }
        
        label <~ coolLabelStyle//Palette.Secondary.shadowLabel + Palette.Main.background + masksToBounds + center
        addButton <~ Palette.Main.tint
        
        navigationItem.rightBarButtonItems!.forEach {
            $0 <~ Palette.Secondary.tint
        }
//        addButton <~ Palette.Main.tint + Palette.Secondary.background

    }
}

