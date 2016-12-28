// The MIT License (MIT)
// 
// Copyright (c) Copyright © 2016 Cayugasoft Technologies
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#if os(iOS)
import UIKit
import FreestylerCore



public extension UISearchBar {
    /** Updates `barStyle` property of `UISearchBar` instance. */
    public static func style(barStyle: UIBarStyle) -> Style {
        return Style("Bar Style \(barStyle)") {
            (styleable: UISearchBar) in
            styleable.barStyle = barStyle
        }
    }

    /** Updates `isTranslucent` property of `UISearchBar` instance. */
    public static func style(isTranslucent: Bool) -> Style {
        return Style("Is Translucent \(isTranslucent)") {
            (styleable: UISearchBar) in
            styleable.isTranslucent = isTranslucent
        }
    }

    /** Updates `barTintColor` property of `UISearchBar` instance. */
    public static func style(barTintColor: Color?) -> Style {
        return Style("Bar Tint Color \(barTintColor)") {
            (styleable: UISearchBar) in
            styleable.barTintColor = barTintColor?.color
        }
    }

    /** Updates `searchBarStyle` property of `UISearchBar` instance. */
    public static func style(searchBarStyle: UISearchBarStyle) -> Style {
        return Style("Search Bar Style \(searchBarStyle)") {
            (styleable: UISearchBar) in
            styleable.searchBarStyle = searchBarStyle
        }
    }

    /** Updates `placeholder` property of `UISearchBar` instance. */
    public static func style(placeholder: String?) -> Style {
        return Style("Placeholder \(placeholder)") {
            (styleable: UISearchBar) in
            styleable.placeholder = placeholder
        }
    }

    /** Updates `prompt` property of `UISearchBar` instance. */
    public static func style(prompt: String?) -> Style {
        return Style("Prompt \(prompt)") {
            (styleable: UISearchBar) in
            styleable.prompt = prompt
        }
    }
}
#endif
