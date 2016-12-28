# Freestyler

<p align="center">
<a href="http://cocoapods.org/pods/Freestyler"><img src="https://img.shields.io/cocoapods/v/Freestyler.svg?style=flat"></a>
<a href="http://cocoapods.org/pods/Freestyler"><img src="https://img.shields.io/cocoapods/l/Freestyler.svg?style=flat"></a>
<a href="http://cocoapods.org/pods/Freestyler"><img src="https://img.shields.io/cocoapods/p/Freestyler.svg?style=flat"></a>
<a href="https://github.com/Carthage/Carthage"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"></a>
<a href="http://cayugasoft.com/?utm_source=github"><img src="https://rawgithub.com/cayugasoft/Resources/master/Badges_by_Cayuga/by_Cayuga.svg"></a>
</p>


## What is it?
*Freestyler* lets you define styles for your application in a single place using declarative syntax, so you can easily change colors, fonts and other visual properties across all the app.

## How to use it?
- Make label text color <span style="color: #f00;">red</span>:

    ```swift
    label <~ UILabel.style(textColor: UIColor.red)
    ```
- Save style to some variable:

    ```swift
    let redTextColor = UILabel.style(textColor: UIColor.red)
    ```
- Apply style above to multiple labels:

    ```swift
    [label1, label2] <~ redTextColor
    ```
- Style which makes text color <span style="color: #0f0;">green</span> and **bold** font:

    ```swift
    let greenTextColorAndBoldFont <~ UILabel.style(textColor: UIColor.green) <~ UILabel.style(font: UIFont.boldSystemFont(ofSize: 14.0))
    /// or 
    let greenTextColorAndBoldFont <~ [UILabel.style(textColor: UIColor.green), UILabel.style(font: UIFont.boldSystemFont(ofSize: 14.0))]
    /// or
    let greenTextColorAndBoldFont: Style = [UILabel.style(textColor: UIColor.green), UILabel.style(font: UIFont.boldSystemFont(ofSize: 14.0))]
    ```
- Application of styles is not commutative, i.e. order matters: 

    ```swift
    label <~ [redTextColor, greenTextColorAndBoldFont] 
    // ^ label will be green and bold
    label <~ [greenTextColorAndBoldFont, redTextColor]
    // ^ label will be red; also bold though
    ```
- You can apply style of `UIView` to `UILabel` but not vice versa; in general, you can apply style of class to instance of subclass:

    ```swift
    label <~ UIView.style(backgroundColor: UIColor.yellow)
    // code below will crash 🔥
    view <~ UILabel.style(textColor: UIColor.red)
    ```
- Using protocol `Color`, you can create palettes for often encountered colors in your app and give them meaningful name. It will also help to have a central place where all colors located so you can change them across all the app with one line of code:

    ```swift
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
- Also the same thing for fonts – `Font` protocol:

    ```swift
    enum Typography: Font {
        case big
        case medium
        case small
    
        var font: Font {
            switch self {
            case .big: return UIFont.systemFont(ofSize: 18.0)
            case .medium: return UIFont.systemFont(ofSize: 14.0)
            case .small: return UIFont.systemFont(ofSize: 11.0)
            }
        }
    }
     
    // ... somewhere in code
 
    label <~ UILabel.style(font: Typography.big)
    ```

## Requirements
* iOS 8.0+
* Swift 3
* Xcode 8.0+

## Installation
### [Cocoapods](http://cocoapods.org)
1. Install **Cocoapods**: `sudo gem install cocoapods`
2. Create *Podfile* in your project directory.
3. Add in your *Podfile*:

	```
	use_frameworks!
	pod 'Freestyler', '~> 1.0'
	```
4. Run `pod install`
5. `import Freestyler` in your .swift files.

### [Carthage](https://github.com/Carthage/Carthage)
1. Install **Carthage**: i.e. via [Homebrew](http://brew.sh), `brew update && brew install carthage`
2. Create *Cartfile* in your project directory.
3. Add in your *Cartfile*:
	
	```
	github "Cayugasoft/Freestyler" ~> 1.0
	```
4. Run `carthage update`
5. On your application targets' **General** settings tab, in the **Linked Frameworks and Libraries** section, drag and drop *Freestyler.framework* from the *Carthage/Build* folder on disk.
6. On your application targets' **Build Phases** settings tab, click the **+** icon and choose **New Run Script Phase**. Create a Run Script in which you specify your shell (ex: bin/sh), add the following contents to the script area below the shell: `/usr/local/bin/carthage copy-frameworks` and add the path to the *Freestyler.framework* under **Input Files**:`$(SRCROOT)/Carthage/Build/iOS/Freestyler.framework`
7. `import Freestyler` in your .swift files.

### Manually
1. Clone or download *Freestyler*
2. Drag `Freestyler` folder to your project in Xcode; make sure **☑️ Copy items into destination's group folder (if needed)** option is checked.

## Author

Alexander Doloz, [adoloz@cayugasoft.com](mailto:adoloz@cayugasoft.com)

## License

*Freestyler* is available under the MIT license. See the *LICENSE.txt* file for more info.
