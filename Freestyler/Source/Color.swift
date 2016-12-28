import UIKit

/** You can use this protocol for color theming of your app. For example, like this:
 
    ```
    enum Theme: Color {
        case title
        case subtitle
        case background

        var color: UIColor {
            switch self {
            case .title: return UIColor.black
            case .subtitle: return UIColor.lightGray
            case .background: return UIColor.white
            }
        }
    }
 
    // ... somewhere in code
 
    label <~ UILabel.style(textColor: Theme.title)
    ```
    Notice that `UIColor` also conforms to `Color` so for every style expecting `Color` you can pass `UIColor` instance.
*/
public protocol Color: CustomStringConvertible {
    var color: UIColor { get }
}


private extension CGFloat {
    func toHex() -> String {
        let int = Int(255.0 * self)
        return String(format: "%02x", int)
    }
}


public extension Color {
    public var description: String {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        let success = color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        guard success else {
            return "--- can't convert color \(self) to RGB ---"
        }
        
        let alphaString = (alpha == 1.0) ? "" : alpha.toHex()
        
        return "#" +
            red.toHex() +
            green.toHex() +
            blue.toHex() +
            alphaString
    }
}

extension UIColor: Color {
    public var color: UIColor { return self }
}
