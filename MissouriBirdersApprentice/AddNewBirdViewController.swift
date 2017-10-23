//
//  AddNewBirdViewController.swift
//  MissouriBirdersApprentice
//
//  Created by student on 10/22/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import UIKit
import Foundation
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
        self.dismiss(animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let newLatitude = Double(latitudeTF.text!)
        let newLongitude = Double(longitudeTF.text!)
        let now = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-YY"
        let date = dateFormatter.string(from: now as Date)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2D()
        location.latitude = newLatitude!
        location.longitude = newLongitude!
        //let month = calendar.component(.month, from: date)
        
        let birdToAdd = Bird(name: nameTF.text!, latinName: latinNameTF.text!, location: location, dateFirstSighted: date)
        
        // Some type checking
//        if (nameTF != nil && nameTF.text != "" && latinNameTF != nil && latinNameTF.text != "" && latitudeTF != nil && longitudeTF != nil){
//        //set num sightings to 1 because since we first saw it, we've seen it once
//        birdToAdd.updateNumSightings(num: 1)
//        county.birdArray.append(birdToAdd)
//        }
        //rint(birdToAdd)
        birdToAdd.updateNumSightings(num: 1)
        
        print(birdToAdd)
        county.addBird(bird: birdToAdd)
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
