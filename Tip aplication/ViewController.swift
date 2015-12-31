//
//  ViewController.swift
//  Tip aplication
//
//  Created by rommel on 12/29/15.
//  Copyright © 2015 rommel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //tip label initialize
    @IBOutlet weak var tipLabel: UITextField!
     //load defaults
    let defaults = NSUserDefaults.standardUserDefaults()
    //variable for custom tip
    var customTipValue = 0
    
    @IBOutlet weak var customButton: UIButton!
    
    
    func calTip(tipAmount:Double){
        
        //get value
        var tipLabelText = tipLabel.text
        
        //calculate tip amount
        let tipamount = Double(tipLabelText!)! * tipAmount
        
        //Update box with result
        tipLabelText = "\(tipamount)"
        
        
        tipLabel.text = tipLabelText
        
    
    }
    
    /**
    * calculates 15 % tip
    */
    
    @IBAction func set15PercentTip(sender: AnyObject) {
        
        
        if !tipLabel.text!.isEmpty
        {
            calTip(1.15)
            
        }
        
    }//end 15%
    
    
    /**
    * calculates 20 % tip
    */
    @IBAction func set20PercentTip(sender: AnyObject) {
     
        
        if !tipLabel.text!.isEmpty
        {
            calTip(1.20)
        
        }
    }
    
    
    /**
     * calculates 30 % tip
     */
    @IBAction func set30PercentTip(sender: AnyObject) {
        
        if !tipLabel.text!.isEmpty
        {
            calTip(1 + ( Double(customTipValue) / 100 ))
            
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
       // print("check for default")
        //get custom tip box value
        
        if (defaults.objectForKey("customUserTipValue")  != nil)
        {
            customTipValue = defaults.integerForKey("customUserTipValue")
            
            
            customButton.setTitle("\(customTipValue)%☺️", forState: UIControlState.Normal)
            
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

