//
//  SettingsController.swift
//  FoamlifeApp
//
//  Created by Danielle Williams on 7/14/16.
//  Copyright © 2016 WavelinkLLC. All rights reserved.
//

import UIKit

class SettingsController: UITableViewController {
        
        let tableData = [["Account Settings"], ["Profile Settings"], ["Privacy Policy"], ["Terms and Conditions"]]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            self.view.backgroundColor = UIColor.goldColor()
            
            tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
            tableView.tableFooterView = UIView()
            self.view.layer.insertSublayer(Configuration.Default.backgroundLayer(self.view.frame.size), atIndex: 0)
            
        let navigationBar = UINavigationBar(frame: CGRectMake(0, -20, self.view.frame.size.width, 60))
        navigationBar.barTintColor = UIColor.goldColor()
        navigationBar.tintColor = UIColor.whiteColor()
        navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: Configuration.Default.font, size: 15)!, NSForegroundColorAttributeName: UIColor.darkGoldColor()]
        
        let navigationItem = UINavigationItem()
        navigationItem.title = "SETTINGS"
        
//        let leftAddBarButtonItem:UIBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(SettingsController.addTapped))
//        
//        navigationItem.setLeftBarButtonItems([leftAddBarButtonItem], animated: true)
        navigationBar.items = [navigationItem]
        
        self.view.addSubview(navigationBar)
        
        self.tabBarController?.tabBar.tintColor  = UIColor.goldColor()
        self.tabBarController?.tabBar.barTintColor = UIColor.nightColor()
        
    //    self.view.layer.insertSublayer(Configuration.Default.backgroundLayer(self.view.frame.size), atIndex: 0)

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        tabBarItem = UITabBarItem(title: " ", image: nil, tag: 0)
        tabBarItem.image = UIImage.fontAwesomeIconWithName(.Gear, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        
    }

//    func addTapped (sender:UIButton) {
//       performSegueWithIdentifier("back1", sender: self)
//    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRectMake(0, 10 , UIScreen.mainScreen().bounds.width, 64))
        return view
    }
    
//    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        if (section == 0) {
//            let view = UIView(frame: CGRectMake(0, 40, UIScreen.mainScreen().bounds.width, 90))
//            let header = HeaderView.init(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 90), title: " ", icon: String.fontAwesomeIconWithName(FontAwesome.Cogs), color: UIColor.nightColor())
//            view.addSubview(header)
//            return view
//        } else {
//            let view = UIView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 35))
//            return view
//        }
//    }
    
    //    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    //        if (section == 0) {
    //            return 90
    //        } else {
    //            return 35
    //        }
    //    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell! = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        cell.textLabel?.text = self.tableData[indexPath.section][indexPath.row]
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " "
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
