//
//  County.swift
//  MissouriBirdersApprentice
//
//  Created by Woolery,Matthew A on 10/13/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import Foundation

//used to make a county and has birds found in county
class County: Equatable{
    static func ==(lhs: County, rhs: County) -> Bool {
        return lhs.name == rhs.name
    }
    
    var name: String
    //array of birds
    var birdArray:[Bird] = []
    
    init(name: String, birdArray:[Bird]){
        self.name = name
        self.birdArray = birdArray
    }
    //have to make sure it is added to an existing county
    
}
