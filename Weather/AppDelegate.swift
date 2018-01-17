//
//  AppDelegate.swift
//  Weather
//
//  Created by Oleg Chernyshenko on 12/01/18.
//  Copyright © 2018 Tugboat. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootViewController = WeatherViewController(nibName: nil, bundle: nil)
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()

        return true
    }
}
