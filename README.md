# LoremSwiftum

<p align="left">
	<a href="https://github.com/lukaskubanek/LoremSwiftum/releases">
		<img src="https://img.shields.io/github/release/lukaskubanek/LoremSwiftum/all.svg?style=flat-square">
	</a>
	<a href="https://developer.apple.com/swift">
        <img src="https://img.shields.io/badge/Swift-4.0+-orange.svg?style=flat-square" alt="Swift 4.0+">
    </a>
    <a href="https://swift.org/package-manager">
        <img src="https://img.shields.io/badge/SPM-compatible-brightgreen.svg?style=flat-square" alt="Swift Package Manager">
    </a>
    <a href="https://github.com/Carthage/Carthage">
        <img src="https://img.shields.io/badge/Carthage-compatible-brightgreen.svg?style=flat-square" alt="Carthage">
    </a>
    <a href="LICENSE.md">
        <img src="https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat-square" alt="License: MIT">
    </a>
    <a href="https://twitter.com/lukaskubanek">
        <img src="https://img.shields.io/badge/contact-@lukaskubanek-olive.svg?style=flat-square" alt="Twitter: @lukaskubanek">
    </a>
</p>

LoremSwiftum is a lightweight lorem ipsum generator library for Swift. It supports generating random words, sentences, paragraphs, titles, names, email addresses, URLs, and tweets. Initially, this library was created as a Swift port of [LoremIpsum](https://github.com/lukaskubanek/LoremIpsum) written in Objective-C.

## Requirements

- Swift 4.0+
- Xcode 9.2+
- iOS 8.0+ / macOS 10.10+

*The Xcode and OS requirements apply only when the library is integrated as a framework or via the Xcode project.*

## Installation

### Swift Package Manager

To install LoremSwiftum using the [Swift Package Manager](https://swift.org/package-manager/), add it as a dependency into your `Package.swift` file:

```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/lukaskubanek/LoremSwiftum.git", from: "2.0.0")
    ],
    ...
)
```

### Carthage

To install LoremSwiftum using [Carthage](https://github.com/Carthage/Carthage), add it as a dependency into your `Cartfile`:

```plain
github "lukaskubanek/LoremSwiftum"
```

Then drag either the `LoremSwiftum.xcodeproj` or the `LoremSwiftum.framework` into your Xcode project/workspace and link your target against the `LoremSwiftum.framework`. Make sure that the framework [gets copied](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application) to your application bundle.

### Git Submodules

You can also install LoremSwiftum via [Git submodules](http://git-scm.com/book/en/v2/Git-Tools-Submodules) and integrate the project `LoremSwiftum.xcodeproj` from the submodule directly into your Xcode workspace.

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
