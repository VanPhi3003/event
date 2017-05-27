//
//  EventTableViewController.swift
//  EditManagementEvent
//
//  Created by Cntt36 on 5/27/17.
//  Copyright © 2017 nhom5. All rights reserved.
//

import UIKit

class EventTableViewController: UIViewController, UITableViewDataSource {
    
    var eventLine: [EventLine]{
        return EventLine.eventLine()
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return eventLine.count
    }

    // lay section trong eventLine
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        let eventLines = eventLine[section]
        return eventLines.events.count
    }
    // lay header trong eventLine
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let eventLines = eventLine[section];
        return eventLines.day
    }

    // section chua row and row chua cell lay tu eventLine

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as! EventTableViewCell
        
        let eventLines = eventLine[indexPath.section]
        let event = eventLines.events[indexPath.row]
        
        cell.configWithCell(event: event)

        return cell
        
        //https://www.youtube.com/watch?v=Hjec5XvnLcU
    }
 
}
