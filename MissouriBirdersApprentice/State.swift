//
//  State.swift
//  MissouriBirdersApprentice
//
//  Created by Woolery,Matthew A on 10/13/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import Foundation
import CoreLocation
//primarily used to access the array inside throughout app
class State{
    static var countyArray:[County] = [County(name:"Nodaway", birdArray: [Bird(name: "American Robin", latinName: "Turdus migratorius", location: CLLocationCoordinate2D(latitude: 10.30, longitude: 44.34), dateFirstSighted: "10-11-2017"), Bird(name: "Black-chested Sparrow", latinName: "Peucaea humeralis", location: CLLocationCoordinate2D(latitude: 10.40, longitude: 44.40), dateFirstSighted: "10-11-2017"), Bird(name: "Eastern Bluebird", latinName: "Sialia sialis", location: CLLocationCoordinate2D(latitude: 10.50, longitude: 44.50), dateFirstSighted: "10-11-2017")]), County(name: "Holt", birdArray: [Bird(name: "Snow Goose", latinName: "Anser caerulescens", location: CLLocationCoordinate2D(latitude: 10.40, longitude: 44.44), dateFirstSighted: "10-11-2017"), Bird(name: "Ross's Goose", latinName: "Anser rossii", location: CLLocationCoordinate2D(latitude: 10.20, longitude: 44.46), dateFirstSighted: "10-11-2017"), Bird(name: "Brant", latinName: "Branta bernicla", location: CLLocationCoordinate2D(latitude: 10.70, longitude: 44.00), dateFirstSighted: "10-11-2017")]), County(name: "Gentry", birdArray: [Bird(name: "Trumpeter Swan", latinName: "Cygnus buccinator", location: CLLocationCoordinate2D(latitude: 10.00, longitude: 44.13), dateFirstSighted: "10-11-2017"), Bird(name: "Rock Dove", latinName: "Columba livia", location: CLLocationCoordinate2D(latitude: 10.10, longitude: 44.30), dateFirstSighted: "10-11-2017"), Bird(name: "Black Rail", latinName: "Laterallus jamaicensis", location: CLLocationCoordinate2D(latitude: 10.90, longitude: 44.20), dateFirstSighted: "10-11-2017")])]
    
    // returns number of counties
    static func countyNum(_ index:Int) -> County
    {
        return countyArray[index]
    }
    //add a new county
    static func addCounty(county: County){
        countyArray.append(county)
    }

    
}


