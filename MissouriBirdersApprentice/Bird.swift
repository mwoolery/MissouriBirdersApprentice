//
//  Bird.swift
//  MissouriBirdersApprentice
//
//  Created by Woolery,Matthew A on 10/13/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import Foundation
import CoreLocation


class Bird : Equatable, CustomStringConvertible{
    //customstringconvertible to be used to test for equality amongst birds
    var description: String {
        return "Name: \(name), latinName: \(latinName), location: \(location), dateFirstSighted: \(dateFirstSighted), numberOfSightings: \(numberOfSightings)"
    }
    
    
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return lhs.description == rhs.description
    }
    
    
    
    var name:String
    var latinName:String
    var location: CLLocationCoordinate2D
    var dateFirstSighted: Date
    var numberOfSightings: Int
    
    init(name:String, latinName:String, location:CLLocationCoordinate2D, dateFirstSighted:Date, numberOfSightings:Int)
    {
        self.name = name
        self.latinName = latinName
        self.location = location
        self.dateFirstSighted = dateFirstSighted
        self.numberOfSightings = numberOfSightings
    }
    
    func updateNumSightings(){
        numberOfSightings += 1
    }
}


