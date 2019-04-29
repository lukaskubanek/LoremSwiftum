# LoremSwiftum

[![](https://img.shields.io/badge/release-v2.1.0-blue.svg?style=flat-square)](https://github.com/lukaskubanek/LoremSwiftum/releases) [![](https://img.shields.io/badge/Swift-4.0+-orange.svg?style=flat-square)](https://developer.apple.com/swift/ "Swift 4.0+") ![](https://img.shields.io/badge/platform-macOS/iOS-yellowgreen.svg?style=flat-square "Platform: macOS/iOS") [![](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat-square "Carthage compatible")](https://github.com/Carthage/Carthage) [![](https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat-square "License: MIT")](LICENSE.md)

**LoremSwiftum** is a lightweight lorem ipsum generator for iOS and macOS written in Swift. It supports generating following random texts: words, sentences, paragraphs, titles, names, email addresses, URLs and tweets. Originally, this library was created as a Swift port of [LoremIpsum](https://github.com/lukaskubanek/LoremIpsum) written in Objective-C.

## Requirements

- Swift 4.0, 4.2, 5.0
- Xcode 9.2+
- iOS 8.0+ / OS X 10.10+

## Installation

The library is distributed as a Swift framework and can be integrated into your project in following ways:

#### Carthage

If you use [Carthage](https://github.com/Carthage/Carthage) for managing your dependencies, put LoremSwiftum into your `Cartfile`:

```plain
github "lukaskubanek/LoremSwiftum"
```

Then, drag either the `LoremSwiftum.xcodeproj` or the `LoremSwiftum.framework` into your project/workspace and link your target against the `LoremSwiftum.framework`. Also make sure that the framework [gets copied](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application) to your application bundle.

#### Git Submodules

Yet another option is using [Git submodules](http://git-scm.com/book/en/v2/Git-Tools-Submodules) and integrating the Xcode project `LoremSwiftum.xcodeproj` from the submodule directly to your Xcode workspace.

## Usage

```swift
import LoremSwiftum

Lorem.word
// => One random word

Lorem.words(3)
// => Three random words

Lorem.sentence
// => One random sentence

Lorem.sentences(3)
// => Three random sentences

Lorem.paragraph
// => One random paragraph

Lorem.paragraphs(3)
// => Three random paragraphs

Lorem.title
// => A random title

Lorem.firstName
// => A random first name

Lorem.lastName
// => A random last name

Lorem.fullName
// => A random full name

Lorem.emailAddress
// => A random email address

Lorem.url
// => A random URL

Lorem.shortTweet
// => A random short tweet

Lorem.tweet
// => A random long tweet
```

## Author

Lukas Kubanek // [lukaskubanek.com](http://lukaskubanek.com) // [@kubanekl](https://twitter.com/kubanekl)

## License

**LoremSwiftum** is released under the [MIT License](LICENSE.md).
