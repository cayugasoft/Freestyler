// This is code generated by style_generator.rb script. Do not modify this file directly since every changes will be overwritten by script.
// Date: 2016-09-29 01:58:34 +0300
import UIKit
import FreestylerCore



public extension UISearchBar {
    /** Updates `barStyle` property of `UISearchBar` instance. */
    public static func styleBarStyle(barStyle: UIBarStyle) -> Style {
        return Style("Bar Style \(barStyle)") {
            (styleable: UISearchBar) in
            styleable.barStyle = barStyle
        }
    }

    /** Updates `translucent` property of `UISearchBar` instance. */
    public static func styleTranslucent(translucent: Bool) -> Style {
        return Style("Translucent \(translucent)") {
            (styleable: UISearchBar) in
            styleable.translucent = translucent
        }
    }

    /** Updates `barTintColor` property of `UISearchBar` instance. */
    public static func styleBarTintColor(barTintColor: ColorType?) -> Style {
        return Style("Bar Tint Color \(barTintColor)") {
            (styleable: UISearchBar) in
            styleable.barTintColor = barTintColor?.color
        }
    }

    /** Updates `searchBarStyle` property of `UISearchBar` instance. */
    public static func styleSearchBarStyle(searchBarStyle: UISearchBarStyle) -> Style {
        return Style("Search Bar Style \(searchBarStyle)") {
            (styleable: UISearchBar) in
            styleable.searchBarStyle = searchBarStyle
        }
    }

    /** Updates `placeholder` property of `UISearchBar` instance. */
    public static func stylePlaceholder(placeholder: String?) -> Style {
        return Style("Placeholder \(placeholder)") {
            (styleable: UISearchBar) in
            styleable.placeholder = placeholder
        }
    }

    /** Updates `prompt` property of `UISearchBar` instance. */
    public static func stylePrompt(prompt: String?) -> Style {
        return Style("Prompt \(prompt)") {
            (styleable: UISearchBar) in
            styleable.prompt = prompt
        }
    }
}
