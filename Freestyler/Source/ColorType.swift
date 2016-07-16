import UIKit


public protocol ColorType {
    var color: UIColor { get }
}

// MARK: UIView styles
public extension ColorType {
    var backgroundColor: Style<UIView> {
        return Style<UIView> {
            $0.backgroundColor = self.color
        }
    }
    
    var tintColor: Style<UIView> {
        return Style<UIView> {
            $0.tintColor = self.color
        }
    }
    
    var barButtonItemTintColor: Style<UIBarButtonItem> {
        return Style<UIBarButtonItem> {
            $0.tintColor = self.color
        }
    }
}
