//
//  AddNewCountyViewController.swift
//  MissouriBirdersApprentice
//
//  Created by student on 10/22/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import UIKit

class AddNewCountyViewController: UIViewController {

    @IBOutlet weak var countyTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func cancelBTN(_ sender: Any) {
        // get rid of the view without updating the array
        self.dismiss(animated: true, completion: nil)
    }
    
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // make sure we aren't putting in blank counties
        if countyTF.text != "" {
        let countyToAdd = County(name: countyTF.text!, birdArray: [])
        State.addCounty(county: countyToAdd)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
