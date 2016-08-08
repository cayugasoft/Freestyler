import UIKit


public protocol ColorType: CustomStringConvertible {
    var color: UIColor { get }
}


private extension CGFloat {
    func toHex() -> String {
        let int = Int(255.0 * self)
        return String(format: "%02x", int)
    }
}


extension ColorType {
    public var description: String {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        let success = color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        guard success else {
            return "--- can't convert color ---"
        }
        
        let alphaString = (alpha == 1.0) ? "" : alpha.toHex()
        
        return "#" +
            red.toHex() +
            green.toHex() +
            blue.toHex() +
            alphaString
    }
}