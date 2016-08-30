import UIKit
import FreestylerCore


// MARK: UIView styles
public extension ColorType {
    public var background: Style {
        return Style("Background color \(self)") {
            let view: UIView = try typeChecker($0)
            view.backgroundColor = self.color
        }
    }
    
    public var layerShadow: Style {
        return Style("Shadow color \(self)") {
            let view: UIView = try typeChecker($0)
            view.layer.shadowColor = self.color.CGColor
        }
    }
}


