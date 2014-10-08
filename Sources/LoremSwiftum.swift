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

private let firstNames = "Judith Angelo Margarita Kerry Elaine Lorenzo Justice Doris Raul Liliana Kerry Elise Ciaran Johnny Moses Davion Penny Mohammed Harvey Sheryl Hudson Brendan Brooklynn Denis Sadie Trisha Jacquelyn Virgil Cindy Alexa Marianne Giselle Casey Alondra Angela Katherine Skyler Kyleigh Carly Abel Adrianna Luis Dominick Eoin Noel Ciara Roberto Skylar Brock Earl Dwayne Jackie Hamish Sienna Nolan Daren Jean Shirley Connor Geraldine Niall Kristi Monty Yvonne Tammie Zachariah Fatima Ruby Nadia Anahi Calum Peggy Alfredo Marybeth Bonnie Gordon Cara John Staci Samuel Carmen Rylee Yehudi Colm Beth Dulce Darius inley Javon Jason Perla Wayne Laila Kaleigh Maggie Don Quinn Collin Aniya Zoe Isabel Clint Leland Esmeralda Emma Madeline Byron Courtney Vanessa Terry Antoinette George Constance Preston Rolando Caleb Kenneth Lynette Carley Francesca Johnnie Jordyn Arturo Camila Skye Guy Ana Kaylin Nia Colton Bart Brendon Alvin Daryl Dirk Mya Pete Joann Uriel Alonzo Agnes Chris Alyson Paola Dora Elias Allen Jackie Eric Bonita Kelvin Emiliano Ashton Kyra Kailey Sonja Alberto Ty Summer Brayden Lori Kelly Tomas Joey Billie Katie Stephanie Danielle Alexis Jamal Kieran Lucinda Eliza Allyson Melinda Alma Piper Deana Harriet Bryce Eli Jadyn Rogelio Orlaith Janet Randal Toby Carla Lorie Caitlyn Annika Isabelle inn Ewan Maisie Michelle Grady Ida Reid Emely Tricia Beau Reese Vance Dalton Lexi Rafael Makenzie Mitzi Clinton Xena Angelina Kendrick Leslie Teddy Jerald Noelle Neil Marsha Gayle Omar Abigail Alexandra Phil Andre Billy Brenden Bianca Jared Gretchen Patrick Antonio Josephine Kyla Manuel Freya Kellie Tonia Jamie Sydney Andres Ruben Harrison Hector Clyde Wendell Kaden Ian Tracy Cathleen Shawn".componentsSeparatedByString(" ")

private let lastNames = "Chung Chen Melton Hill Puckett Song Hamilton Bender Wagner McLaughlin McNamara Raynor Moon Woodard Desai Wallace Lawrence Griffin Dougherty Powers May Steele Teague Vick Gallagher Solomon Walsh Monroe Connolly Hawkins Middleton Goldstein Watts Johnston Weeks Wilkerson Barton Walton Hall Ross Chung Bender Woods Mangum Joseph Rosenthal Bowden Barton Underwood Jones Baker Merritt Cross Cooper Holmes Sharpe Morgan Hoyle Allen Rich Rich Grant Proctor Diaz Graham Watkins Hinton Marsh Hewitt Branch Walton O'Brien Case Watts Christensen Parks Hardin Lucas Eason Davidson Whitehead Rose Sparks Moore Pearson Rodgers Graves Scarborough Sutton Sinclair Bowman Olsen Love McLean Christian Lamb James Chandler Stout Cowan Golden Bowling Beasley Clapp Abrams Tilley Morse Boykin Sumner Cassidy Davidson Heath Blanchard McAllister McKenzie Byrne Schroeder Griffin Gross Perkins Robertson Palmer Brady Rowe Zhang Hodge Li Bowling Justice Glass Willis Hester Floyd Graves Fischer Norman Chan Hunt Byrd Lane Kaplan Heller May Jennings Hanna Locklear Holloway Jones Glover Vick O'Donnell Goldman McKenna Starr Stone McClure Watson Monroe Abbott Singer Hall Farrell Lucas Norman Atkins Monroe Robertson Sykes Reid Chandler Finch Hobbs Adkins Kinney Whitaker Alexander Conner Waters Becker Rollins Love Adkins Black Fox Hatcher Wu Lloyd Joyce Welch Matthews Chappell MacDonald Kane Butler Pickett Bowman Barton Kennedy Branch Thornton McNeill Weinstein Middleton Moss Lucas Rich Carlton Brady Schultz Nichols Harvey Stevenson Houston Dunn West O'Brien Barr Snyder Cain Heath Boswell Olsen Pittman Weiner Petersen Davis Coleman Terrell Norman Burch Weiner Parrott Henry Gray Chang McLean Eason Weeks Siegel Puckett Heath Hoyle Garrett Neal Baker Goldman Shaffer Choi Carver".componentsSeparatedByString(" ")

private let emailDomains = "gmail.com yahoo.com hotmail.com email.com live.com me.com mac.com aol.com fastmail.com mail.com".componentsSeparatedByString(" ")

private let emailDelimiters = ["", ".", "-", "_"]

private let domains = "twitter.com google.com youtube.com wordpress.org adobe.com blogspot.com godaddy.com wikipedia.org wordpress.com yahoo.com linkedin.com amazon.com flickr.com w3.org apple.com myspace.com tumblr.com digg.com microsoft.com vimeo.com pinterest.com qq.com stumbleupon.com youtu.be addthis.com miibeian.gov.cn delicious.com baidu.com feedburner.com bit.ly".componentsSeparatedByString(" ")

private let tweets = ["Far away, in a forest next to a river beneath the mountains, there lived a small purple otter called Philip. Philip likes sausages. The End.", "He liked the quality sausages from Marks & Spencer but due to the recession he had been forced to shop in a less desirable supermarket. End.", "He awoke one day to find his pile of sausages missing. Roger the greedy boar with human eyes, had skateboarded into the forest & eaten them!"]

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
    
    public class func title() -> String {
        let numberOfWordsInTitle: UInt = randomNumber(lowerBound: 2, upperBound: 7)
        return words(numberOfWordsInTitle).capitalizedString
    }
    
    public class func name() -> String {
        return firstName() + " " + lastName()
    }
    
    public class func firstName() -> String {
        return firstNames.randomElement()
    }
    
    public class func lastName() -> String {
        return lastNames.randomElement()
    }
    
    public class func email() -> String {
        let delimiter = emailDelimiters.randomElement()
        let domain = emailDomains.randomElement()
        return (firstName() + delimiter + lastName() + "@" + domain).lowercaseString
    }
    
    public class func URL() -> NSURL {
        return NSURL(string: "http://" + domains.randomElement() + "/")
    }
    
    public class func tweet() -> String {
        return tweets.randomElement()
    }
    
    public class func date() -> NSDate {
        let currentDate = NSDate()
        let currentCalendar = NSCalendar.currentCalendar()
        let referenceDateComponents = NSDateComponents()
        referenceDateComponents.year = -4
        let referenceDate = currentCalendar.dateByAddingComponents(referenceDateComponents, toDate: currentDate, options: nil)!
        let timeIntervalSinceReferenceDate = currentDate.timeIntervalSinceDate(referenceDate)
        let randomTimeInterval = NSTimeInterval(randomNumber(lowerBound: 0, upperBound: Int(timeIntervalSinceReferenceDate)))
        return referenceDate.dateByAddingTimeInterval(randomTimeInterval)
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
