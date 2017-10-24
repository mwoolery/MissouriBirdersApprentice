//
//  BirdViewController.swift
//  MissouriBirdersApprentice
//
//  Created by Woolery,Matthew A on 10/13/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import UIKit

//content dependent on bird passed in
class BirdViewController: UIViewController {
    
    var bird:Bird! //bird
    
    //stuff information is stored into
    @IBOutlet weak var birdIV: UIImageView!
    @IBOutlet weak var locationLBL: UILabel!
    @IBOutlet weak var dateLBL: UILabel!
    
    @IBOutlet weak var sightingsLBL: UILabel!
    // used to change the sighting count, has error checking
    @IBAction func updateSightingsBTN(_ sender: Any) {
        // increment the sightings by 1
        bird.updateNumSightings()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //fills the items with the information for the bird
        let location = bird.locationToString()
        locationLBL.text = location
        dateLBL.text = String(bird.dateFirstSighted)
        sightingsLBL.text = String(bird.numberOfSightings)
        birdIV.image = UIImage(named: "\(bird.name).jpg")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
