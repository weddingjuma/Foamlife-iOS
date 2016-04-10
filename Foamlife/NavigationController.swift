//
//  NavigationController.swift
//  Foamlife
//
//  Created by Kelvin Graddick on 4/9/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barTintColor = UIColor.goldColor()
        self.navigationBar.tintColor = UIColor.whiteColor()
        self.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: Configuration.Default.font, size: 15)!, NSForegroundColorAttributeName: UIColor.darkGoldColor()]
        self.navigationBar.translucent = false
        
        let navigationItem = UINavigationItem()
        
        let rightButton = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        rightButton.image = UIImage.fontAwesomeIconWithName(.Gear, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        navigationItem.rightBarButtonItem = rightButton
        
        navigationBar.items = [navigationItem]
    }

}