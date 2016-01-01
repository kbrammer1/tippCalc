//
//  SettingsViewController.swift
//  Tip Calculator Take 2
//
//  Created by Kyvaune Brammer on 12/31/15.
//  Copyright © 2015 Kyvaune Brammer. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipSettings: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func secondSegment(sender: UISegmentedControl) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipSettings.selectedSegmentIndex, forKey: "defaultPercentage")
        defaults.synchronize()

        
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
