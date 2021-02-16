//
//  TableViewController.swift
//  TableViewXib
//
//  Created by Vennela Reddy on 2/16/21.
//

import UIKit

class TableViewController: UITableViewController {

    
    
    let cities = ["Seattle" , "Portland" , "SFO" , "LA" , "NY" , "MA"];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        // Configure the cell...
    
        cell.LblCity.text = cities[indexPath.row]
    
        return cell
    }
    
}
