////
////  ClothingController.swift
////  FoamlifeApp
////
////  Created by Danielle Williams on 7/15/16.
////  Copyright © 2016 WavelinkLLC. All rights reserved.
////
//
//import UIKit
//
//class ClothingController: UITableViewController {
//     var bgImage: UIImageView?
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        //self.view.backgroundColor = UIColor.goldColor()
//        
//        var image: UIImage = UIImage(named: "construction")!
//        bgImage = UIImageView(image: image)
//        bgImage!.frame = CGRectMake(50,150,250,250)
//        self.view.addSubview(bgImage!)
//        
//        tableView.tableFooterView = UIView()
//        self.view.layer.insertSublayer(Configuration.Default.backgroundLayer(self.view.frame.size), atIndex: 0)
//
//        
//        let navigationBar = UINavigationBar(frame: CGRectMake(0, -20, self.view.frame.size.width, 60))
//        navigationBar.barTintColor = UIColor.goldColor()
//        navigationBar.tintColor = UIColor.whiteColor()
//        navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: Configuration.Default.font, size: 15)!, NSForegroundColorAttributeName: UIColor.darkGoldColor()]
//        
//        let navigationItem = UINavigationItem()
//        navigationItem.title = "CLOTHING"
//        
//        let rightAddBarButtonItem:UIBarButtonItem = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(ClothingController.addTapped))
//        rightAddBarButtonItem.image = UIImage.fontAwesomeIconWithName(.Gear, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
//        
//        navigationItem.setRightBarButtonItems([rightAddBarButtonItem], animated: true)
//        navigationBar.items = [navigationItem]
//        self.view.addSubview(navigationBar)
//        
//        self.tabBarController?.tabBar.tintColor  = UIColor.goldColor()
//        self.tabBarController?.tabBar.barTintColor = UIColor.nightColor()
//    }
//    
//    func addTapped (sender:UIButton) {
//        performSegueWithIdentifier("segue5", sender: self)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        
//        // Initialize Tab Bar Item
//        tabBarItem = UITabBarItem(title: " ", image: nil, tag: 4)
//        tabBarItem.image = UIImage.fontAwesomeIconWithName(.Bullhorn, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    
//}

