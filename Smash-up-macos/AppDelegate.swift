//
//  AppDelegate.swift
//  Smash-up-macos
//
//  Created by Villars Gimm on 27/11/2018.
//  Copyright © 2018 RibEye Studios. All rights reserved.
//

import Cocoa
import AppKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let appCenterSelector = NSSelectorFromString("appCenter")
        guard
            let secrets = NSClassFromString("Secrets") as AnyObject as? NSObjectProtocol,
            secrets.responds(to: appCenterSelector),
            let appCenter = secrets.perform(appCenterSelector)?.takeRetainedValue() as? String,
            appCenter.count > 0
            else {
                return
        }
        MSAppCenter.start(appCenter, withServices: [
            MSAnalytics.self,
            MSCrashes.self,
            ])
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

