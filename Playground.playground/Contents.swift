//: Playground - noun: a place where people can play

import UIKit
import Freestyler
import FreestylerCore


let s = (Style { (view: UIView) in view.backgroundColor = .black } <~ UIView.styleTintColor(tintColor: UIColor.red))

UIView() <~ s



