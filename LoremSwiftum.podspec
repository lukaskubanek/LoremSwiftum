Pod::Spec.new do |s|
  s.name         = "LoremSwiftum"
  s.version      = "2.0.0-beta"
  s.summary      = "A lightweight lorem ipsum generator for Swift."
  s.description  = <<-DESC
  LoremSwiftum is a lightweight lorem ipsum generator for iOS and macOS written in Swift. It supports generating following random texts: words, sentences, paragraphs, titles, names, email addresses, URLs and tweets. Originally, this library was created as a Swift port of LoremIpsum written in Objective-C.
                   DESC
  s.homepage     = "https://github.com/lukaskubanek/LoremSwiftum"
  s.license      = "MIT"
  s.author       = { "Lukas Kubanek" => "lukas.kubanek@me.com" }
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.source       = { :git => "https://github.com/lukaskubanek/LoremSwiftum.git", :tag => "v#{s.version}" }
  s.source_files = "Sources/**/*.swift"
end
