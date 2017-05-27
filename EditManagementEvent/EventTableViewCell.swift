//
//  EventTableViewCell.swift
//  EditManagementEvent
//
//  Created by Cntt36 on 5/27/17.
//  Copyright © 2017 nhom5. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lbldescription: UILabel!
    
    func configWithCell(event: Event)
    {
        lblTitle.text = event.title
        lbldescription.text = event.description
    }
    
}
