//: Playground - noun: a place where people can play

import UIKit
import Freestyler
import FreestylerCore

import PlaygroundSupport


//let s = (Style { (view: UIView) in view.backgroundColor = .black } <~ UIView.styleTintColor(tintColor: UIColor.red))

//UIView() <~ s

let s: Style = [UIView.style(backgroundColor: UIColor.red)]


let button = UIButton(type: .custom)
button.setTitle("fdsafs", for: .normal)
button.sizeToFit()

let container = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
PlaygroundPage.current.liveView = container

container <~ UIView.style(tintColor: UIColor.blue)
container.addSubview(button)
button <~ [s, UIView.style(cornerRadius: 5.0)]
button <~ [UIButton.style(titleShadowColor: UIColor.green, forControlState: .normal)]
