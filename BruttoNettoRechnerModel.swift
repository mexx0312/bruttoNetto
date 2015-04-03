//
//  BruttoNettoRechnerModel.swift
//  BruttoNettoRechner
//
//  Created by Sumit Kumar on 03.04.15.
//  Copyright (c) 2015 Sumit Kumar. All rights reserved.
//

import Foundation

class BruttoNettoRechnerModel {
    
    var incomeBrutto: Double = 4580
    
    var steuerKlasse = 1
    
    var steuersatz: Double = 0.42
    
    
    let lohnGrenzen = [
        5000,
        80000
    ]
    
    let lohnGrenzDelta = 2500
    
    
    func returnNetto() -> Double {
        
        var steuerAnteil: Double = incomeBrutto * steuersatz
        var incomeNetto: Double = incomeBrutto - steuerAnteil
        
        return incomeNetto
        
    }
    
}