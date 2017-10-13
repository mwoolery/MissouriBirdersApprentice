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
    
    
    
    
    
    
    
    
    //var county:[County] = [County(name:"Nodaway", birdArray: [Bird(name: "American Robin", latinName: "Turdus migratorius", location: CLLocationCoordinate2D(latitude: 10.30, longitude: 44.34), dateFirstSighted: "10-11-2017", numberOfSightings: 0), Bird(name: "Black-chested Sparrow", latinName: "Peucaea humeralis", location: CLLocationCoordinate2D(latitude: 10.40, longitude: 44.40), dateFirstSighted: "10-11-2017", numberOfSightings: 0), Bird(name: "Eastern Bluebird", latinName: "Sialia sialis", location: CLLocationCoordinate2D(latitude: 10.50, longitude: 44.50), dateFirstSighted: "10-11-2017", numberOfSightings: 0)]), County(name: "Holt", birdArray: [Bird(name: "Snow Goose", latinName: "Anser caerulescens", location: CLLocationCoordinate2D(latitude: 10.40, longitude: 44.44), dateFirstSighted: "10-11-2017", numberOfSightings: 0), Bird(name: "Ross's Goose", latinName: "Anser rossii", location: CLLocationCoordinate2D(latitude: 10.20, longitude: 44.46), dateFirstSighted: "10-11-2017", numberOfSightings: 0), Bird(name: "Brant", latinName: "Branta bernicla", location: CLLocationCoordinate2D(latitude: 10.70, longitude: 44.00), dateFirstSighted: "10-11-2017", numberOfSightings: 0)]), County(name: "Gentry", birdArray: [Bird(name: "Trumpeter Swan", latinName: "Cygnus buccinator", location: CLLocationCoordinate2D(latitude: 10.00, longitude: 44.13), dateFirstSighted: "10-11-2017", numberOfSightings: 0), Bird(name: "Rock Dove", latinName: "Columba livia", location: CLLocationCoordinate2D(latitude: 10.10, longitude: 44.30), dateFirstSighted: "10-11-2017", numberOfSightings: 0), Bird(name: "Black Rail", latinName: "Laterallus jamaicensis", location: CLLocationCoordinate2D(latitude: 10.90, longitude: 44.20), dateFirstSighted: "10-11-2017", numberOfSightings: 0)])]
    
    var county:[County] = [County(name:"Nodaway", birdArray: [Bird(name: "American Robin", latinName: "Turdus migratorius", location: CLLocationCoordinate2D(latitude: 10.30, longitude: 44.34), dateFirstSighted: "10-11-2017"), Bird(name: "Black-chested Sparrow", latinName: "Peucaea humeralis", location: CLLocationCoordinate2D(latitude: 10.40, longitude: 44.40), dateFirstSighted: "10-11-2017"), Bird(name: "Eastern Bluebird", latinName: "Sialia sialis", location: CLLocationCoordinate2D(latitude: 10.50, longitude: 44.50), dateFirstSighted: "10-11-2017")]), County(name: "Holt", birdArray: [Bird(name: "Snow Goose", latinName: "Anser caerulescens", location: CLLocationCoordinate2D(latitude: 10.40, longitude: 44.44), dateFirstSighted: "10-11-2017"), Bird(name: "Ross's Goose", latinName: "Anser rossii", location: CLLocationCoordinate2D(latitude: 10.20, longitude: 44.46), dateFirstSighted: "10-11-2017"), Bird(name: "Brant", latinName: "Branta bernicla", location: CLLocationCoordinate2D(latitude: 10.70, longitude: 44.00), dateFirstSighted: "10-11-2017")]), County(name: "Gentry", birdArray: [Bird(name: "Trumpeter Swan", latinName: "Cygnus buccinator", location: CLLocationCoordinate2D(latitude: 10.00, longitude: 44.13), dateFirstSighted: "10-11-2017"), Bird(name: "Rock Dove", latinName: "Columba livia", location: CLLocationCoordinate2D(latitude: 10.10, longitude: 44.30), dateFirstSighted: "10-11-2017"), Bird(name: "Black Rail", latinName: "Laterallus jamaicensis", location: CLLocationCoordinate2D(latitude: 10.90, longitude: 44.20), dateFirstSighted: "10-11-2017")])]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
