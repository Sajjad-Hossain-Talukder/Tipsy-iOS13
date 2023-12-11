//
//  MainViewController.swift
//  Tipsy
//
//  Created by Xotech on 11/12/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var tipsBrain = TipsBrain()

    @IBOutlet weak var tenPct: UIButton!
    
    @IBOutlet weak var zeroPct: UIButton!
    
    @IBOutlet weak var twentyPct: UIButton!
    
    @IBOutlet weak var incDecPeople: UIStepper!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    @IBOutlet weak var textInput: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allInit()
    }
    
    @IBAction func pctPressed(_ sender: UIButton) {
        let selected = tipsBrain.getSelected(sender.tag)
        zeroPct.isSelected = selected[0]
        tenPct.isSelected = selected[1]
        twentyPct.isSelected = selected[2]
    }
    
    
    @IBAction func incDecPeopleAction(_ sender: UIStepper) {
        splitLabel.text = String(format:"%.0f",incDecPeople.value)
    }
    
    @IBAction func calculateAction(_ sender: UIButton) {
        
        tipsBrain.calculateTips(textInput.text ?? "NF", splitLabel.text ?? "NF" )
        
        self.performSegue(withIdentifier: "goToResult", sender: self )
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            var secondVC = segue.destination as! ResultViewController
            secondVC.res = tipsBrain.getResult()
            secondVC.perPct = tipsBrain.getPeoplePercentageInfo()
            
        }
    }
    
    func allInit(){
        zeroPct.tag = 0
        tenPct.tag = 1
        twentyPct.tag = 2
        splitLabel.text = String(format:"%.0f",incDecPeople.value)
    }
    
}
