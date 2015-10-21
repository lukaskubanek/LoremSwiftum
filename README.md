# LoremSwiftum

[![](https://img.shields.io/github/release/lukaskubanek/LoremSwiftum.svg?style=flat-square)](https://github.com/lukaskubanek/LoremSwiftum/releases) [![](https://img.shields.io/badge/Swift-2.0-orange.svg?style=flat-square)](https://developer.apple.com/swift/) ![](https://img.shields.io/badge/platform-OS_X%20&_iOS-yellowgreen.svg?style=flat-square) [![](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat-square "Carthage compatible")](https://github.com/Carthage/Carthage) [![](https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat-square "License")](LICENSE.md)

**LoremSwiftum** is a lightweight lorem ipsum generator for iOS and OS X written in Swift. It supports generating texts in different formats (words, sentences, paragraphs) and miscellaneous data (names, URLs, dates etc.). This framework is a reimplementation of the library [LoremIpsum](https://github.com/lukaskubanek/LoremIpsum) written in Objective-C.

## Installation

### Carthage

The easiest way to integrate this framework in your project is to use [Carthage](https://github.com/Carthage/Carthage/).

1. Add `github "lukaskubanek/LoremSwiftum" ~> 1.0` to your `Cartfile`.
2. Run `carthage bootstrap`.
3. Drag either the `LoremSwiftum.xcodeproj` or the `LoremSwiftum.framework` into your project/workspace and link your target against the `LoremSwiftum.framework`.
4. Make sure the framework [gets copied](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application) to your application bundle.

### Submodules

Another option for integrating this framework is to use [Git submodules](http://git-scm.com/book/en/v2/Git-Tools-Submodules).

## Usage

For the overview of the API provided by this library see the playground file [Examples.playground](Examples/LoremSwiftum.playground/Contents.swift).

## Author

Lukas Kubanek // [lukaskubanek.com](http://lukaskubanek.com) // [@kubanekl](https://twitter.com/kubanekl)

## License

`LoremSwiftum` is released under the [MIT License](LICENSE.md).
