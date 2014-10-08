//
//      __                      ____       _ _____
//     / /  ___  _______ __ _  / __/    __(_) _/ /___ ____ _
//    / /__/ _ \/ __/ -_)  ' \_\ \| |/|/ / / _/ __/ // /  ' \
//   /____/\___/_/  \__/_/_/_/___/|__,__/_/_/ \__/\_,_/_/_/_/
//
//                     LoremSwiftum.swift
//         http://github.com/lukaskubanek/LoremSwiftum
//       2014 (c) Lukas Kubanek (http://lukaskubanek.com)
//

import Foundation

func randomNumber(lowerBound: Int = 0, #upperBound: Int) -> Int {
    return lowerBound + Int(arc4random_uniform(UInt32(upperBound - lowerBound)))
}

func randomNumber(lowerBound: UInt = 0, #upperBound: UInt) -> UInt {
    return lowerBound + UInt(arc4random_uniform(UInt32(upperBound - lowerBound)))
}

extension Array {
    func randomElement() -> T {
        return self[randomNumber(upperBound: self.count)]
    }
}

func capitalizeFirstLetter(string: String) -> String {
    let startIndex = string.startIndex
    let endIndex = string.startIndex.successor()
    let capitalizedFirstLetter = string.substringToIndex(advance(startIndex, 1)).capitalizedString
    return string.stringByReplacingCharactersInRange(startIndex..<endIndex, withString: capitalizedFirstLetter)
}

private let allWords = "alias consequatur aut perferendis sit voluptatem accusantium doloremque aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt neque dolorem ipsum quia dolor sit amet consectetur adipisci velit sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem ut enim ad minima veniam quis nostrum exercitationem ullam corporis nemo enim ipsam voluptatem quia voluptas sit suscipit laboriosam nisi ut aliquid ex ea commodi consequatur quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae et iusto odio dignissimos ducimus qui blanditiis praesentium laudantium totam rem voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident sed ut perspiciatis unde omnis iste natus error similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo porro quisquam est qui minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut consequatur vel illum qui dolorem eum fugiat quo voluptas nulla pariatur at vero eos et accusamus officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae itaque earum rerum hic tenetur a sapiente delectus ut aut reiciendis voluptatibus maiores doloribus asperiores repellat".componentsSeparatedByString(" ")

public class Lorem {
    public class func word() -> String {
        return allWords.randomElement()
    }
    
    public class func words(count: UInt) -> String {
        return compose(word, count, middleSeparator: " ")
    }
    
    public class func sentence() -> String {
        let numberOfWordsInSentence: UInt = randomNumber(lowerBound: 4, upperBound: 16)
        return compose(word, numberOfWordsInSentence, middleSeparator: " ", endSeparator: ".", decorator: capitalizeFirstLetter)
    }
    
    public class func sentences(count: UInt) -> String {
        return compose(sentence, count, middleSeparator: " ")
    }
    
    public class func paragraph() -> String {
        let numberOfSentencesInParagraph: UInt = randomNumber(lowerBound: 3, upperBound: 9)
        return sentences(numberOfSentencesInParagraph)
    }
    
    public class func paragraphs(count: UInt) -> String {
        return compose(paragraph, count, middleSeparator: "\n")
    }
}

extension Lorem {
    typealias Generator = (Void -> String)
    typealias Decorator = (String -> String)
    
    private class func compose(generator: Generator, _ count: UInt, middleSeparator: String, endSeparator: String = "", decorator: Decorator = { $0 }) -> String {
        var result = ""
        for index in 0..<count {
            result += generator()
            
            if (index < count - 1) {
                result += middleSeparator
            } else {
                result += endSeparator
            }
        }
        return decorator(result)
    }
}
