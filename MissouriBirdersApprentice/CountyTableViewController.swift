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
        
        // make the navigation item and register the cell
        self.navigationItem.title = "Counties"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Go Back!", style: .done, target: nil, action: nil)
        
        tableView.register(CountyTableViewCell.self, forCellReuseIdentifier: "county_cell")
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
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let birdsTVC:BirdsTableViewController = BirdsTableViewController()
        birdsTVC.county = State.countyArray[indexPath.row]
        self.navigationController?.pushViewController(birdsTVC, animated: true)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
