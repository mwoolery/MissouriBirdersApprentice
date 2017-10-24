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
        // variables for latitude and longitue also a date format generator
        // I only want to do all of this though if the values are acceptable
        if (nameTF.text! != "" && latinNameTF.text! != "" && latitudeTF.text! != "" && longitudeTF.text! != "" && Double(latitudeTF.text!) != nil && Double(longitudeTF.text!) != nil) {
        let newLatitude = Double(latitudeTF.text!)
        let newLongitude = Double(longitudeTF.text!)
        let now = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-YY"
        let date = dateFormatter.string(from: now as Date)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2D()
        location.latitude = newLatitude!
        location.longitude = newLongitude!
        
        //make the bird to add
        let birdToAdd = Bird(name: nameTF.text!, latinName: latinNameTF.text!, location: location, dateFirstSighted: date)
        
        
        
        print(birdToAdd)
        county.addBird(bird: birdToAdd)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
