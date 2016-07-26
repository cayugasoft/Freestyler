import UIKit


public protocol ColorType {
    var color: UIColor { get }
}

// MARK: UIView styles
public extension ColorType {
    public var background: Style<UIView> {
        return Style<UIView> {
            $0.backgroundColor = self.color
        }
    }
    
    public var tint: Style<UIView> {
        return Style<UIView> {
            $0.tintColor = self.color
        }
    }
    
    var label: Label {
        return Label(self.color)
    }
}

//Palette.Main.textView.text

public struct Label {
    let color: UIColor
    
    init(_ color: UIColor) {
        self.color = color
    }
    
    var text: Style<UILabel> {
        return Style<UILabel> {
            $0.textColor = self.color
        }
    }
}

//extension UITextView {
//    static func text(c: ColorType) -> Style<UITextView> {
//        return Style {
//            $0.textColor = c.color
//        }
//    }
//}
public extension ColorType {
    
    
    public var highlightedText: Style<UILabel> {
        return Style<UILabel> {
            $0.highlightedTextColor = self.color
        }
    }
}
