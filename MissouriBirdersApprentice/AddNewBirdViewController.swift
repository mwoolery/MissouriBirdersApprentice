//
//  AddNewBirdViewController.swift
//  MissouriBirdersApprentice
//
//  Created by student on 10/22/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import UIKit

class AddNewBirdViewController: UIViewController {

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
