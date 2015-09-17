//
//  LoremSwiftum_iOS_Tests.swift
//  LoremSwiftum-iOS-Tests
//
//  Created by Lukas Kubanek on 17/09/15.
//  Copyright © 2015 Lukas Kubanek. All rights reserved.
//

import XCTest
@testable import LoremSwiftum

class LoremSwiftumTests: XCTestCase {
    
    func testGenerationOfOneWord() {
        let word = Lorem.word
        
        XCTAssert(word.characters.count > 0)
        XCTAssert(!word.containsString(" "))
    }
    
    func testGenerationOfSomeWords() {
        let words = Lorem.words(4)
        
        XCTAssert(words.characters.count > 0)
        XCTAssert(words.containsString(" "))
        XCTAssertEqual(words.componentsSeparatedByString(" ").count, 4)
    }
    
}
