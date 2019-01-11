//
//  AppDelegate.swift
//  Smash-up-macos
//
//  Created by Villars Gimm on 27/11/2018.
//  Copyright © 2018 RibEye Studios. All rights reserved.
//

import Cocoa
import HockeySDK

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    static var didSetupHockeySDK = false
    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if !AppDelegate.didSetupHockeySDK{
            BITHockeyManager.shared()?.configure(withIdentifier: "APP_IDENTIFIER")
            BITHockeyManager.shared()?.start()
            AppDelegate.didSetupHockeySDK = true
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    @IBAction func crash(_ sender: Any?) {

    }

}

