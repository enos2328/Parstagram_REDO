//
//  AppDelegate.swift
//  Parstagram_REDO
//
//  Created by Athena Enosara on 3/5/20.
//  Copyright © 2020 Athena Enosara. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("Testing.")
        
        Parse.initialize(
            with: ParseClientConfiguration(block: { (configuration: ParseMutableClientConfiguration) -> Void in
                configuration.applicationId = "Parstagram_REDO"
                configuration.server = "https://guarded-lowlands-63005.herokuapp.com//parse"
            
            })
        )
        
        return true
    }



}

