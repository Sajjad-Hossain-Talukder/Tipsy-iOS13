//
//  TipsBrain.swift
//  Tipsy
//
//  Created by Xotech on 11/12/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

struct TipsBrain {
    
    var tips : Tips?
    var percentage: Float  = 0.1
    
    mutating func getSelected(_ tag: Int ) -> [Bool] {
        if tag == 0 {
            percentage = 0.0
            return [true,false,false]
        } else if tag == 1 {
            return [false,true,false]
        } else {
            percentage = 0.2
            return [false,false,true]
        }
    }
    
    mutating func calculateTips(_ inpTips:String, _ person :String  ){
        
        let tp:Float? = Float(inpTips)
        let per:Float? = Float(person)
        
        if let money = tp {
            var total = ( money + money*percentage ) / per!
            tips = Tips(tipsGained: String(format:"%0.2f",total), pct: String(format:"%.0f", percentage*100)+"%", people: person)
        } else {
            tips = Tips(tipsGained: "Invalid", pct: "#" , people: "#" )
        }
        
        
        
        
        tips?.tipsGained = inpTips
        tips?.people = person
    }
    
    
}
