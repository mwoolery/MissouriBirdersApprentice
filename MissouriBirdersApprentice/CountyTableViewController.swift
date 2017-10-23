//
//  CountyTableViewController.swift
//  MissouriBirdersApprentice
//
//  Created by Woolery,Matthew A on 10/13/17.
//  Copyright © 2017 Woolery,Matthew A. All rights reserved.
//

import UIKit
import CoreLocation

class CountyTableViewController: UITableViewController {
    
    
    
    
    
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.title = State.countyArray.name      // make the navigation item and register the cell
        //self.navigationItem.title = "Counties"
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Go Back!", style: .done, target: nil, action: nil)
//        
        //tableView.register(CountyTableViewCell.self, forCellReuseIdentifier: "county_cell")
    }
    //reload the data each time it appears
    override func viewWillAppear(_ animated: Bool){
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    //only 1 section used
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return State.countyArray.count
    }

    // lists the counties
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "county_cell", for: indexPath)
        
        let county = State.countyNum(indexPath.row)
        cell.textLabel?.text = county.name
        
        // Configure the cell...

        return cell
    }
    // makes the bird view controller based on what bird is selected
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let birdsTVC:BirdsTableViewController = BirdsTableViewController()
//        birdsTVC.county = State.countyArray[indexPath.row]
//        self.navigationController?.pushViewController(birdsTVC, animated: true)
//    }
    @IBAction func addNewCounty(segue:UIStoryboardSegue){
        
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        // Now we instantiate a CitiesFlownTableViewController, where we will display a list of cities flown
        
        // let citiesFlownTVC:CitiesFlownTableViewController = CitiesFlownTableViewController()
        
        if segue.identifier == "birds"{
            let birdTVC = segue.destination as! BirdsTableViewController
            
            // Examine CitiesFlownTableViewController -- you will see it defines an airline property that we configure here
            // so that by the time that TVC becomes visible, the airline's property & cities will be displayed to the user
            
          birdTVC.county = State.countyArray[(tableView.indexPathForSelectedRow?.row)!]
        }
        // Every UIViewController, if it is part of a UINavigationController stack, has a navigationController property that references that
        // UINavigationController.  This is quite handy, when we want to push a new view controller
        // self.navigationController?.pushViewController(citiesFlownTVC, animated: true)
        
        
        
    }
    @IBAction func cancel(segue:UIStoryboardSegue){}
    
    

    

}
