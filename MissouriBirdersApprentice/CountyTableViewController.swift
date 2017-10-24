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
        // setting the title
        self.navigationItem.title = "Counties"
        
    }
    //reload the data each time it appears
    override func viewWillAppear(_ animated: Bool){
        // reload data when adding county
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return State.countyArray.count
    }

    // lists the counties
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "county_cell", for: indexPath)
        
        let county = State.countyNum(indexPath.row)
        cell.textLabel?.text = county.name
        

        return cell
    }
    
    // here to allow for us to go to segue over to the add new county VC
    @IBAction func addNewCounty(segue:UIStoryboardSegue){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segue to go to the birds TVC
        if segue.identifier == "birds"{
            let birdTVC = segue.destination as! BirdsTableViewController
            
            
          birdTVC.county = State.countyArray[(tableView.indexPathForSelectedRow?.row)!]
        }
        
        
        
        
    }
    @IBAction func cancel(segue:UIStoryboardSegue){}
    
    

    

}
