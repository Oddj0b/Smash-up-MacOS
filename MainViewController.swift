//
//  MainViewController.swift
//  
//
//  Created by Villars Gimm on 11/01/2019.
//

import Cocoa
import HockeySDK

class MainViewController: NSViewController, NCWidgetProviding {
    
    static var didSetupHockeySDK = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if !MainViewController.didSetupHockeySDK{
            BITHockeyManager.shared().configure(withIdentifier: "APP_IDENTIFIER")
            BITHockeyManager.shared().start()
            MainViewController.didSetupHockeySDK = true
        }
    }
}
