//
//  AppDelegate.swift
//  SimpleTable
//
//  Created by Max Schoening on 1/15/16.
//  Copyright © 2016 Canvas. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow? = {
		let window = UIWindow()
		window.rootViewController = UINavigationController(rootViewController: RootViewController())
		return window
	}()


	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		window?.makeKeyAndVisible()
		return true
	}
}

