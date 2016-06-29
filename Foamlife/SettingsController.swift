//
//  SettingsController.swift
//  Foamlife
//
//  Created by Danielle Williams on 4/4/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import UIKit

class SettingsController:  UITableViewController, UINavigationBarDelegate {

    var bgImage: UIImageView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        var image: UIImage = UIImage(named: "construction")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRectMake(50,150,250,250)
        self.view.addSubview(bgImage!)
        
        //        var label = UILabel(frame: CGRectMake(0, 200, 200, 21))
        //        label.center = CGPointMake(160, 284)
        //        label.textAlignment = NSTextAlignment.Center
        //        label.textColor = UIColor.roseColor()
        //        label.font = UIFont(name: "HelveticaNeue", size: 20)
        //        label.text = "Under Construction"
        //        self.view.addSubview(label)
        
        self.view.layer.insertSublayer(Configuration.Default.backgroundLayer(self.view.frame.size), atIndex: 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        
        // Create the navigation bar
        let navigationBar = UINavigationBar(frame: CGRectMake(0, 20, self.view.frame.size.width, 44))
        navigationBar.backgroundColor = UIColor.whiteColor()
        navigationBar.delegate = self;

        let navigationItem = UINavigationItem()
        navigationItem.title = "SETTINGS"
        
        // Create left and right button for navigation item
        let leftButton = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        leftButton.image = UIImage.fontAwesomeIconWithName(.List, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        

        navigationItem.leftBarButtonItem = leftButton

        navigationBar.items = [navigationItem]
        
        // Make the navigation bar a subview of the current view controller
        self.view.addSubview(navigationBar)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
