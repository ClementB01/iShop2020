//
//  FiltersViewController.swift
//  iShaop2020
//
//  Created by lpiem on 11/03/2020.
//  Copyright © 2020 lpiem. All rights reserved.
//

import UIKit

class FiltersViewController: UITableViewController {
        
    @IBOutlet weak var txtPrice: UILabel!
    @IBOutlet weak var slidePrice: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        let minValue: Float = 0.0
        let maxValue: Float = 200.0
        
        slidePrice.minimumValue = minValue
        slidePrice.maximumValue = maxValue
        slidePrice.value = slidePrice.maximumValue/2
        
        txtPrice.text = String(slidePrice.value) + "€"
    }
    
    // MARK: - Actions
    
    @IBAction func onValueChange(_ sender: Any) {
        txtPrice.text = String(slidePrice.value) + "€"
    }
    
}
