//
//  AddNewBirdViewController.swift
//  MissouriBirdersApprentice
//
//  Created by student on 10/22/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import UIKit
import CoreLocation
class AddNewBirdViewController: UIViewController {
    var county:County!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var latinNameTF: UITextField!
    @IBOutlet weak var latitudeTF: UITextField!
    @IBOutlet weak var longitudeTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func cancelBTN(_ sender: Any) {
    }
    @IBAction func doneBTN(_ sender: Any) {
        let newLatitude: Double = Double(latitudeTF.text!)!
        let newLongitude: Double = Double(longitudeTF.text!)!
        let birdToAdd = Bird(name: nameTF.text!, latinName: latinNameTF.text!, location: CLLocationCoordinate2D(latitude: newLatitude, longitude: newLongitude ), dateFirstSighted: String(describing: Date()))
        //set num sightings to 1 because since we first saw it, we've seen it once
        birdToAdd.updateNumSightings(num: 1)
        county.birdArray.append(birdToAdd)
        
        
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
