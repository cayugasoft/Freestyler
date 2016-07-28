import UIKit


public protocol ColorType {
    var color: UIColor { get }
}

// MARK: UIView styles
public extension ColorType {
    public var tint: Style {
        return Style("Tint color \(self.color)") {
            guard let tintColorable = $0 as? TintColorable else {
                throw StyleError.WrongType(expected: TintColorable.self, actual: $0.dynamicType)
            }
            
            tintColorable.frs_setTintColor(self.color)
        }
    }
    
    public var background: Style {
        return Style("Background color \(self.color)") {
            let view: UIView = try typeChecker($0)
            view.backgroundColor = self.color
        }
    }

    public var text: Style {
        return Style("Text color \(self.color)") {
            let label: UILabel = try typeChecker($0)
            label.textColor = self.color
        }
    }
}

protocol TintColorable: Styleable {
    func frs_setTintColor(color: UIColor)
}

extension UIView: TintColorable {
    func frs_setTintColor(color: UIColor) {
        tintColor = color
    }
}

extension UIBarButtonItem: TintColorable {
    func frs_setTintColor(color: UIColor) {
        tintColor = color
    }
}