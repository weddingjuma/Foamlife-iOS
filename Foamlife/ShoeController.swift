//
//  ShoeController.swift
//  Foamlife
//
//  Created by Danielle Williams on 4/4/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import UIKit

class ShoeController: UITableViewController, UINavigationBarDelegate {
    
    let tableData = [["Test 10", "Test 20", "Test 30", "Test 40"], ["Test 50", "Test 60", "Test 70", "Test 80"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        automaticallyAdjustsScrollViewInsets = false;
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.view.layer.insertSublayer(Configuration.Default.backgroundLayer(self.view.frame.size), atIndex: 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        
                // Create the navigation bar
                let navigationBar = UINavigationBar(frame: CGRectMake(0, 20, self.view.frame.size.width, 44))
                navigationBar.backgroundColor = UIColor.porcelainColor()
                navigationBar.delegate = self;
        
                let navigationItem = UINavigationItem()
                navigationItem.title = "SHOE COLLECTION"
//        
//                let leftButton = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
//                leftButton.image = UIImage.fontAwesomeIconWithName(.List, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
                let rightButton = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
                rightButton.image = UIImage.fontAwesomeIconWithName(.Gear, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        
               // navigationItem.leftBarButtonItem = leftButton
                navigationItem.rightBarButtonItem = rightButton
        
                navigationBar.items = [navigationItem]
        
                self.view.addSubview(navigationBar)
    }
    
    func positionForBar(bar: UIBarPositioning!) -> UIBarPosition {
        return UIBarPosition.TopAttached
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if (section == 0) {
            let view = UIView(frame: CGRectMake(0, 40, UIScreen.mainScreen().bounds.width, 90))
            let header = HeaderView.init(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 90), title: " ", icon: String.fontAwesomeIconWithName(FontAwesome.Cogs), color: UIColor.darkBlueColor())
            view.addSubview(header)
            return view
        } else {
            let view = UIView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 35))
            return view
        }
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (section == 0) {
            return 90
        } else {
            return 35
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell! = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        cell.textLabel?.text = self.tableData[indexPath.section][indexPath.row]
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "  "
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
