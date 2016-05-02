//
//  AppDelegate.swift
//  Foamlife
//
//  Created by Kelvin Graddick on 3/31/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UINavigationBarDelegate {

    var window: UIWindow?
    
    var tabViewController1 : NewsController?
    var tabViewController2 : CatalogController?
    var tabViewController3 : ReleaseController?
    var tabViewController4 : ShoeController?
    var tabViewController5 : ClothingController?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        let flowLayout = UICollectionViewFlowLayout()
        
       
        //setting the initial screen bounds of the view
        self.tabViewController1 = NewsController()
        self.tabViewController2 = CatalogController()
        self.tabViewController3 = ReleaseController()
        self.tabViewController4 = ShoeController()
        self.tabViewController5 = ClothingController()
        
        var nav = UINavigationController()
        var tabBarController = UITabBarController()

        tabBarController.viewControllers = [tabViewController1! , tabViewController2!, tabViewController3! , tabViewController4!, tabViewController5!]
        tabBarController.tabBar.tintColor = UIColor.goldColor()
        tabBarController.tabBar.barTintColor = UIColor.nightColor()
        tabBarController.tabBar.backgroundColor = UIColor.whiteColor()
        
        //adding all five views to the TabBarView
        var item1 = UITabBarItem(title: " ", image: nil, tag: 0)
        item1.image = UIImage.fontAwesomeIconWithName(.Bullhorn, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        var item2 = UITabBarItem(title: " ", image: nil, tag: 1)
        item2.image = UIImage.fontAwesomeIconWithName(.ShoppingCart, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        var item3 = UITabBarItem(title: " ", image: nil, tag: 2)
        item3.image = UIImage.fontAwesomeIconWithName(.Calendar, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        var item4 = UITabBarItem(title: " ", image: nil, tag: 3)
        item4.image = UIImage.fontAwesomeIconWithName(.Star, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        var item5 = UITabBarItem(title: " ", image: nil, tag: 4)
        item5.image = UIImage.fontAwesomeIconWithName(.ShoppingBag, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))

        item1.imageInsets = UIEdgeInsetsMake(4, 0, -4, 0);
        item2.imageInsets = UIEdgeInsetsMake(4, 0, -4, 0);
        item3.imageInsets = UIEdgeInsetsMake(4, 0, -4, 0);
        item4.imageInsets = UIEdgeInsetsMake(4, 0, -4, 0);
        item5.imageInsets = UIEdgeInsetsMake(4, 0, -4, 0);
        
        tabViewController1?.tabBarItem = item1
        tabViewController2?.tabBarItem = item2
        tabViewController3?.tabBarItem = item3
        tabViewController4?.tabBarItem = item4
        tabViewController5?.tabBarItem = item5
        
        self.window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
    return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

