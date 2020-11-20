//
//  AppDelegate.swift
//  ViewCodeApp
//
//  Created by Eric Alves Brito on 18/11/20.
//  Copyright © 2020 Afrodev. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let navigationController = UINavigationController()
        let welcomeViewController = WelcomeViewController()
        navigationController.viewControllers = [welcomeViewController]

        window?.rootViewController = navigationController        
        //window?.rootViewController = welcomeViewController
        
        window?.makeKeyAndVisible()
        
        return true
    }

}

