//
//  QuotesViewController.swift
//  Week6.Wednesday.RandomQuoteGenerator
//
//  Created by Connie Xu on 10/11/21.
//

import UIKit

//there's also UITableViewDataSource
class QuotesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //UITableViewDataSource protocol methods
    
    //section header (optional)
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ("section \(section)")
    }
    
    //mult sections (optional)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //how many rows should i display in this section (required)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    //what cell should i render at  given index path (structure that contains section and row) (required)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //creating and destroying objects is expensive; solution:
        //cells that are no longer visible are put into a "reuse pool" AKA recycling center
        //when tableview needs a ew cell, it is going to query / ask the reuse pool for avail cells
            //responses for "are there reusable cells??":
                //yes, reuse them
                //no, tableview will create it
        
        //indexPath.
        
        //let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell")!
        
        //title
        cell.textLabel?.text = "Hello"
        //subtitle
        cell.detailTextLabel?.text = "\(indexPath.section), \(indexPath.row)"
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
