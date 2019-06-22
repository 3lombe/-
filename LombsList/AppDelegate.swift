//
//  AppDelegate.swift
//  LombsList
//
//  Created by Nsonsa Elombe Kisala Jr. on 3/20/18.
//  Copyright © 2018 Nsonsa Kisala Jr. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        print("\n\nREALM FILE DIRECTORY HERE:\n\(String(describing: Realm.Configuration.defaultConfiguration.fileURL))\n\n")
        
        
        do {
            _ = try Realm()
        } catch {
            print("Error initializing new realm, \(error)")
        }
        return true
    }
}

