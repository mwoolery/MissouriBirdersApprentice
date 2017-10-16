//
//  Bird.swift
//  MissouriBirdersApprentice
//
//  Created by Woolery,Matthew A on 10/13/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import Foundation
import CoreLocation

// bird class that will be used to make bird objects
class Bird : Equatable, CustomStringConvertible{
    //customstringconvertible to be used to test for equality amongst birds
    var description: String {
        return "Name: \(name), latinName: \(latinName), location: \(location), dateFirstSighted: \(dateFirstSighted), numberOfSightings: \(numberOfSightings)"
    }
    
    
    
    static func ==(lhs: Bird, rhs: Bird) -> Bool {
        return lhs.description == rhs.description
    }
    
    
    //its properties
    var name:String
    var latinName:String
    var location: CLLocationCoordinate2D
    var dateFirstSighted: String
    var numberOfSightings: Int
    
    //initializer
    init(name:String, latinName:String, location:CLLocationCoordinate2D, dateFirstSighted:String)
    {
        self.name = name
        self.latinName = latinName
        self.location = location
        self.dateFirstSighted = dateFirstSighted
        self.numberOfSightings = 0
    }
    //updates the number of sightings to what number is passed in
    func updateNumSightings(num:Int){
        numberOfSightings = num
    }
    // used to print the location
    func locationToString() ->String {
        return "\(location.latitude), \(location.longitude)"
    }
}


