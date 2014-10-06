//
//  Tweet.swift
//  CFTwitterDay1
//
//  Created by Bradley Johnson on 10/5/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import Foundation

class Tweet {
    let text : String
    let id : Int
    
    init (jsonDictionary : NSDictionary) {
        self.text = jsonDictionary["text"] as String
        self.id  = jsonDictionary["id"] as Int
    }
    
    class func parseJSONDataIntoTweets( rawJSONData : NSData) -> [Tweet]? {
        
        var error : NSError?
        if let JSONArray = NSJSONSerialization.JSONObjectWithData(rawJSONData, options: nil, error: &error) as? NSArray {
            //converting the raw jsonData to an Array worked, we can now parse through it
            var tweets = [Tweet]()
            for jsonDictionary in JSONArray   {
                if let tweetDictionary = jsonDictionary as? NSDictionary {
                    tweets.append(Tweet(jsonDictionary: tweetDictionary))
                }
            }
            return tweets
        }
        return nil
    }
}
