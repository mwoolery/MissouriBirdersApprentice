//
//  BirdsTableViewController.swift
//  MissouriBirdersApprentice
//
//  Created by Woolery,Matthew A on 10/13/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import UIKit

class BirdsTableViewController: UITableViewController {
    
    // so we can access the array
    var county:County!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set title in nav bar
        self.navigationItem.title = county.name
        
    }
    override func viewWillAppear(_ animated: Bool) {
        // so it refreshes the data after birds are added
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return county.birdArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bird_cell", for: indexPath)

        cell.textLabel?.text = county.birdArray[indexPath.row].name
        cell.detailTextLabel?.text = county.birdArray[indexPath.row].latinName
        cell.imageView?.image = UIImage(named: "\(county.birdArray[indexPath.row].name).jpg")
        return cell
    }
    
     //makes the individual birds controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // this block of code is used to decide which segue to follow since there is 2 different ones
        if segue.identifier == "showbird"{
            // to get the bird view controller
        let birdVC = segue.destination as! BirdViewController
        birdVC.bird = county.birdArray[(tableView.indexPathForSelectedRow?.row)!]
        }
        else{
            //to get the add new bird view controller
            let newBirdVC = segue.destination as! AddNewBirdViewController
            newBirdVC.county = county
        }
        
    }
    

    @objc @IBAction func addNewBird(sender:AnyObject?){
        let newBirdVC:AddNewBirdViewController = AddNewBirdViewController()
        self.present(newBirdVC, animated: true, completion: nil)
    }
    
    @IBAction func addNewBird(segue:UIStoryboardSegue){
        
    }
    // MARK: - Navigation
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//        // Now we instantiate a CitiesFlownTableViewController, where we will display a list of cities flown
//
//        // let citiesFlownTVC:CitiesFlownTableViewController = CitiesFlownTableViewController()
//
//        if segue.identifier == "birds"{
//            let birdVC = segue.destination as! BirdViewController
//
//            // Examine CitiesFlownTableViewController -- you will see it defines an airline property that we configure here
//            // so that by the time that TVC becomes visible, the airline's property & cities will be displayed to the user
//
//            birdVC.bird = county.birdArray[(tableView.indexPathForSelectedRow?.row)!]
//        }
//        // Every UIViewController, if it is part of a UINavigationController stack, has a navigationController property that references that
//        // UINavigationController.  This is quite handy, when we want to push a new view controller
//        // self.navigationController?.pushViewController(citiesFlownTVC, animated: true)
//
//
//
//    }
    @IBAction func cancel(segue:UIStoryboardSegue){}
    

}
