//
//  QuoteService.swift
//  Week6.Wednesday.RandomQuoteGenerator
//
//  Created by Connie Xu on 9/29/21.
//

import Foundation

//another example of singleton
//class UserService{
//    //singleton, but also optional jsut in case user has not logged in yet
//    static var currentUser: User?
//}

//process data
    //manages quote
class QuoteService {
    
    //WEEK 7
    //CREATING A SINGLETON
        //use shared, default or standard
    static let shared = QuoteService()
    
    //private init makes it not possible to create a new obj for singletons
    private init(){ }
    
    let quotes = [
        Quote(message: "I don't do drugs I am drugs", author: "Salvador Dali"),
        Quote(message: "Never let a good crisis go to waste", author: "Winston Churchill"),
        Quote(message: "You miss 100% of the shots you don't take", author: "Andrew"),
        Quote(message: "Hey #2", author: "Connie")
    ]
    
    func getRandomQuote () -> Quote {
        let randomIndex = Int.random(in: 0..<quotes.count)
        
        return quotes[randomIndex]
    }
    
    func quotesCount () -> Int {
        return quotes.count
    }
    
    func getQuote () {
        
    }
}
