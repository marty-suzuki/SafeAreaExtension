# SafeAreaExtension

[![CI Status](http://img.shields.io/travis/marty-suzuki/SafeAreaExtension.svg?style=flat)](https://travis-ci.org/marty-suzuki/SafeAreaExtension)
[![Version](https://img.shields.io/cocoapods/v/SafeAreaExtension.svg?style=flat)](http://cocoapods.org/pods/SafeAreaExtension)
[![License](https://img.shields.io/cocoapods/l/SafeAreaExtension.svg?style=flat)](http://cocoapods.org/pods/SafeAreaExtension)
[![Platform](https://img.shields.io/cocoapods/p/SafeAreaExtension.svg?style=flat)](http://cocoapods.org/pods/SafeAreaExtension)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

You can handle safeAreaInsets changes of every UIView.

![](./Images/image.png)

## Usage

```swift
final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.safeArea.insetsDidChange = { insets in
            // If safeAreaInsets of `self.view`, this closure called.
            print("view.safeAreaInsets = \(insets)")
        }
    }
}
```

### UIView Extension

```swift
extension UIView {
    // UIView Extension about Safe Area
    var safeArea: SafeAreaExtension { get }
}

class SafeAreaExtension {
    // Safe Area Insets handler
    var insetsDidChange: ((UIEdgeInsets) -> ())? { get set }
}
```

## Requirements

- Xcode 9 or greater
- Swift 4 or greater
- iOS 11 or greater

## Installation

### CocoaPods

SafeAreaExtension is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SafeAreaExtension'
```

### Carthage

If you’re using [Carthage](https://github.com/Carthage/Carthage), simply add
SafeAreaExtension to your `Cartfile`:

```ruby
github "marty-suzuki/SafeAreaExtension"
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

marty-suzuki, s1180183@gmail.com

## License

SafeAreaExtension is available under the MIT license. See the LICENSE file for more info.
