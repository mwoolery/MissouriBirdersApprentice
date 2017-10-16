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
        self.navigationItem.title = county.name
        tableView.register(CountyTableViewCell.self, forCellReuseIdentifier: "bird_cell")
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
    
    // makes the individual birds controller
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let birdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "bird_view_controller") as! BirdViewController
        birdVC.bird = county.birdArray[indexPath.row]
        self.navigationController?.pushViewController(birdVC, animated: true)
    }


}
