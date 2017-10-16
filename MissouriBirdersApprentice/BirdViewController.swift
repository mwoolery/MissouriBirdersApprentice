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
    @IBOutlet weak var sightingsTF: UITextField!
    // used to change the sighting count, has error checking
    @IBAction func updateSightingsBTN(_ sender: Any) {
        let val:Int = Int(sightingsTF.text!)!
        if sightingsTF.text != nil && val >= 0{
            bird.updateNumSightings(num: val)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //fills the items with the information for the bird
        let location = bird.locationToString()
        locationLBL.text = location
        dateLBL.text = String(bird.dateFirstSighted)
        sightingsTF.text = String(bird.numberOfSightings)
        birdIV.image = UIImage(named: "\(bird.name).jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
