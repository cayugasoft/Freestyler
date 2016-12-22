# FreestylerCore

<p align="center">
<a href="http://cocoapods.org/pods/FreestylerCore"><img src="https://img.shields.io/cocoapods/v/FreestylerCore.svg?style=flat"></a>
<a href="http://cocoapods.org/pods/FreestylerCore"><img src="https://img.shields.io/cocoapods/l/FreestylerCore.svg?style=flat"></a>
<a href="http://cocoapods.org/pods/FreestylerCore"><img src="https://img.shields.io/cocoapods/p/FreestylerCore.svg?style=flat"></a>
<a href="https://github.com/Carthage/Carthage"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"></a>
<a href="http://cayugasoft.com/?utm_source=github"><img src="https://rawgithub.com/cayugasoft/Resources/master/Badges_by_Cayuga/by_Cayuga.svg"></a>
</p>


## What is it?
When we develop our applications from designer's mockups, we often encounter the same visual patterns over and over again – colors, fonts, etc. It's wise decision to keep them in one place in your app's code and reuse everywhere. That's exactly what *FreestylerCore* helps you to do.

*FreestylerCore* defines class `Style`. Style can be applied to `UIView` or `UIBarButtonItem`. Multiple `Style`s can be combined into one. See how to create your own styles and apply them in [Usage](#usage) section.

*FreestylerCore* is meant to be the part of the bigger framework – [*Freestyler*](https://github.com/cayugasoft/Freestyler). *Freestyler* = *FreestylerCore* + big bunch of styles. It's currently in active development and contributions are welcome.

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
	pod 'FreestylerCore', '~> 1.0'
	```
4. Run `pod install`
5. `import FreestylerCore` in your .swift files.

### [Carthage](https://github.com/Carthage/Carthage)
1. Install **Carthage**: i.e. via [Homebrew](http://brew.sh), `brew update && brew install carthage`
2. Create *Cartfile* in your project directory.
3. Add in your *Cartfile*:
	
	```
	github "Cayugasoft/FreestylerCore" ~> 1.0
	```
4. Run `carthage update`
5. On your application targets' **General** settings tab, in the **Linked Frameworks and Libraries** section, drag and drop *FreestylerCore.framework* from the *Carthage/Build* folder on disk.
6. On your application targets' **Build Phases** settings tab, click the **+** icon and choose **New Run Script Phase**. Create a Run Script in which you specify your shell (ex: bin/sh), add the following contents to the script area below the shell: `/usr/local/bin/carthage copy-frameworks` and add the path to the *FreestylerCore.framework* under **Input Files**:`$(SRCROOT)/Carthage/Build/iOS/FreestylerCore.framework`
7. `import FreestylerCore` in your .swift files.

### Manually
1. Clone or download *FreestylerCore*
2. Drag `Source` folder to your project in Xcode; make sure **☑️ Copy items into destination's group folder (if needed)** option is checked.

## Usage
Here is basic usage; see more examples in Playground.

- Create style:

```swift
let roundCorners = Style("Round corners") {
    (view: UIView) in
    view.layer.cornerRadius = 5.0
}
let redBorder = Style("Red Border") {
    (view: UIView) in
    view.layer.borderColor = UIColor.red.CGColor
}
```

- Apply style:

```swift
button <~ roundCorners <~ redBorder
// --- or ---
button <~ [roundCorners, redBorder]

// You can combine multiple styles into one 
let style = roundCorners <~ redBorder
button <~ style

// You can apply style to multiple items at once
[button, label, imageView] <~ style

// And multiple styles to multiple labels too
[button, label, imageView] <~ [roundCorners, redBorder]

```

If you don't like using custom operators, there are corresponding methods:

```swift
button.apply(style: roundCorners).apply(style: redBorder)
// --- or ---
button.apply(styles: [roundCorners, redBorder])

// You can instantiate style from array literal
let style: Style = [roundCorners, redBorder]
button.apply(style: style)

// You can apply style to multiple items at once
[button, label, imageView].apply(style: style)

// And multiple styles to multiple labels too
[button, label, imageView].apply(styles: [roundCorners, redBorder])
```

## Goals
* Add unit tests to all operators and methods.
* Add support for other platforms, especially for macOS.
* Add support for [Swift Package Manager](https://swift.org/package-manager/).

## Author

Alexander Doloz, [adoloz@cayugasoft.com](mailto:adoloz@cayugasoft.com)

## License

*FreestylerCore* is available under the MIT license. See the *LICENSE.txt* file for more info.