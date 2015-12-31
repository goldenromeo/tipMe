//
//  SettingsViewController.swift
//  Tip aplication
//
//  Created by rommel on 12/29/15.
//  Copyright © 2015 rommel. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    //load defaults 
    let defaults = NSUserDefaults.standardUserDefaults()
    
    //initialize tip box
    @IBOutlet weak var customTipBox: UITextField!
    
    
    /**
     * set custom tip
     *rightmost button
     */
    
    @IBAction func customTipValueSetter(sender: AnyObject) {
    
    
        if customTipBox.text!.isEmpty
        {
            defaults.setInteger(30, forKey: "customUserTipValue")
            defaults.synchronize()
            
        }else
        {
            
            //get value
            
            
            defaults.setInteger(Int(customTipBox.text!)!, forKey: "customUserTipValue")
            defaults.synchronize()
            
        

        
        }
    
    
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
