//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Xotech on 11/12/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var res:String? = nil
    var perPct:String? = nil
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var splitPercentageInfo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = res
        splitPercentageInfo.text = perPct
    }
    
    @IBAction func recalculateAction(_ sender: UIButton) {
        self.dismiss(animated: true , completion: nil)
    }
}
