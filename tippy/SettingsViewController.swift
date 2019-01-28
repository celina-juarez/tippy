//
//  SettingsViewController.swift
//  tippy
//
//  Created by Celina on 1/27/19.
//  Copyright © 2019 Celina. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "myPercentage")
        
        settingsControl.selectedSegmentIndex = intValue
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onTap(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(settingsControl.selectedSegmentIndex, forKey: "myPercentage")
        defaults.synchronize()
        
    }
}
