//
//  MainViewController.swift
//  Tipsy
//
//  Created by Xotech on 11/12/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tenPct: UIButton!
    
    @IBOutlet weak var zeroPct: UIButton!
    
    @IBOutlet weak var twentyPct: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zeroPct.tag = 0
        tenPct.tag = 1
        twentyPct.tag = 2

    }
    
    @IBAction func pctPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            zeroPct.isSelected = true
            tenPct.isSelected = false
            twentyPct.isSelected = false
        } else if  sender.tag == 1 {
            zeroPct.isSelected = false
            tenPct.isSelected = true
            twentyPct.isSelected = false
        } else {
            zeroPct.isSelected = false
            tenPct.isSelected = false
            twentyPct.isSelected = true
        }
    }
    
    @IBAction func calculateAction(_ sender: UIButton) {
        
        
        
    }
    
}
