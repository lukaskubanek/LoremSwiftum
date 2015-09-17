//
//        __                             _____         _ ______
//       / /   ____  ________  ____ ___ / ___/      __(_) __/ /___  ______ ___
//      / /   / __ \/ ___/ _ \/ __ `__ \\__ \ | /| / / / /_/ __/ / / / __ `__ \
//     / /___/ /_/ / /  /  __/ / / / / /__/ / |/ |/ / / __/ /_/ /_/ / / / / / /
//    /_____/\____/_/   \___/_/ /_/ /_/____/|__/|__/_/_/  \__/\__,_/_/ /_/ /_/
//
//                           LoremSwiftum.playground
//                 http://github.com/lukaskubanek/LoremSwiftum
//            2014-2015 (c) Lukas Kubanek (http://lukaskubanek.com)
//

import LoremSwiftum

// This is required in order to execute asynchronous code
// http://stackoverflow.com/a/24016254/670119
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

// Texts

let word = Lorem.word
let words0 = Lorem.words(0)
let words1 = Lorem.words(1)
let words5 = Lorem.words(5)

let sentence = Lorem.sentence
let sentences0 = Lorem.sentences(0)
let sentences1 = Lorem.sentences(1)
let sentences5 = Lorem.sentences(5)

let paragraph = Lorem.paragraph
let paragraphs0 = Lorem.paragraphs(0)
let paragraphs1 = Lorem.paragraphs(1)
let paragraphs5 = Lorem.paragraphs(5)

let title = Lorem.title

// Misc Data

let name = Lorem.name
let firstName = Lorem.firstName
let lastName = Lorem.lastName

let email = Lorem.email
let url = Lorem.URL
let tweet = Lorem.tweet

let date = Lorem.date

// Images

let imageURLs = [
    Lorem.imageURL(size: CGSize(width: 100, height: 200)),
    Lorem.imageURL(size: CGSize(width: 150, height: 70), service: .PlaceKitten),
    Lorem.imageURL(width: 400, height: 600, service: .Hhhhold),
    Lorem.imageURL(width: 200, height: 300, service: .DummyImage)
]

let images = [
    Lorem.image(size: CGSize(width: 100, height: 200)),
    Lorem.image(size: CGSize(width: 150, height: 70), service: .PlaceKitten),
    Lorem.image(width: 400, height: 600, service: .Hhhhold),
    Lorem.image(width: 200, height: 300, service: .DummyImage)
]

Lorem.image(size: CGSize(width: 100, height: 200)) {
    let image = $0
}

Lorem.image(size: CGSize(width: 150, height: 70), service: .PlaceKitten) {
    let image = $0
}

Lorem.image(width: 400, height: 600, service: .Hhhhold) {
    let image = $0
}

Lorem.image(width: 200, height: 300, service: .DummyImage) {
    let image = $0
}

Lorem.image(width: 300, height: 300) {
    let image = $0
}
