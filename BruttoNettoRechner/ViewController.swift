//
//  ViewController.swift
//  BruttoNettoRechner
//
//  Created by Sumit Kumar on 03.04.15.
//  Copyright (c) 2015 Sumit Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var incomeBrutto : UITextField!
    @IBOutlet var incomeLabel : UILabel!
    @IBOutlet var resultsTextView : UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func calcBruttoNetto(sender : AnyObject) {
        
        rechner.incomeBrutto = Double((incomeBrutto.text as NSString).doubleValue)
        
        let netto = rechner.returnNetto()
        
        resultsTextView.text = "\(netto)"
        
    }
    
    @IBAction func viewTapped(sender : AnyObject) {
        resultsTextView.resignFirstResponder()
    }
    
    
    let rechner = BruttoNettoRechnerModel()
    
    func refreshUI() {

        

        resultsTextView.text = ""
    }


}

