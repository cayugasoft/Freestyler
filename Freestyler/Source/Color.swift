import UIKit


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
