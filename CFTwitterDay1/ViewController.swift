//
//  ViewController.swift
//  CFTwitterDay1
//
//  Created by Bradley Johnson on 10/5/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = NSBundle.mainBundle().pathForResource("tweet", ofType: "json") as String? {
            var error : NSError?
            let jsonData = NSData(contentsOfFile: path)
            var tweets = Tweet.parseJSONDataIntoTweets(jsonData)
            println(tweets!.count)
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

