//
//  AppDelegate.swift
//  RxInputOutput
//
//  Created by Aleksandr Malina on 10/04/2019.
//  Copyright © 2019 Aleksandr Malina. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    window = UIWindow(frame: UIScreen.main.bounds)
    let viewController = NavigationService.makeRepositoriesModule().embedInNavigation()
    window?.rootViewController = viewController
    window?.makeKeyAndVisible()
    return true
  }
}

