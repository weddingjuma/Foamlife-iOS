//
//  ReleaseController.swift
//  FoamlifeApp
//
//  Created by Danielle Williams on 7/14/16.
//  Copyright © 2016 WavelinkLLC. All rights reserved.
//

import UIKit

class ReleaseController: UITableViewController {
    private var releases: [Release] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.goldColor()
        tableView.tableFooterView = UIView()
        tableView.registerClass(ReleaseCell.self, forCellReuseIdentifier: "ReleaseCell")
        
        
        let navigationBar = UINavigationBar(frame: CGRectMake(0, -20, self.view.frame.size.width, 60))
        navigationBar.barTintColor = UIColor.goldColor()
        navigationBar.tintColor = UIColor.whiteColor()
        navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: Configuration.Default.font, size: 15)!, NSForegroundColorAttributeName: UIColor.darkGoldColor()]
        let navigationItem = UINavigationItem()
        navigationItem.title = "RELEASES"
        
        let rightAddBarButtonItem:UIBarButtonItem = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(ReleaseController.addTapped))
        rightAddBarButtonItem.image = UIImage.fontAwesomeIconWithName(.Gear, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        
        navigationItem.setRightBarButtonItems([rightAddBarButtonItem], animated: true)
        
        navigationBar.items = [navigationItem]
        
        self.view.addSubview(navigationBar)
        
        self.tabBarController?.tabBar.tintColor  = UIColor.goldColor()
        self.tabBarController?.tabBar.barTintColor = UIColor.nightColor()
        
        self.releases.append(Release.init(JSONData: [
            "id" : 1,
            "displayImageUrl" : "shoes1.jpg",
            "name" : "Foamposites",
            "detail" : "'Wu-Tang'",
            "date" : "5/30/16",
            "price" : " -  $150.00"
            ]))
        
        
        self.releases.append(Release.init(JSONData: [
            "id" : 2,
            "displayImageUrl" : "shoes2.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'University Red'",
            "date" : "5/30/16",
            "price" : " -  $250.00"
            ]))
        
        
        self.releases.append(Release.init(JSONData: [
            "id" : 3,
            "displayImageUrl" : "shoes3.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'Pure Platinum'",
            "date" : "6/01/16",
            "price" : " -  $300.00"
            ]))
        
        self.releases.append(Release.init(JSONData: [
            "id" : 4,
            "displayImageUrl" : "shoes4.jpg",
            "name" : "Foamposites",
            "detail" : "'Gold'",
            "date" : "6/01/16",
            "price" : " -  $150.00"
            ]))
        
        
        self.releases.append(Release.init(JSONData: [
            "id" : 5,
            "displayImageUrl" : "shoes2.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'University Red'",
            "date" : "6/15/16",
            "price" : " -  $150.00"
            ]))
        
        
        self.releases.append(Release.init(JSONData: [
            "id" : 6,
            "displayImageUrl" : "shoes1.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'Pure Platinum'",
            "date" : "6/15/16",
            "price" : " -  $350.00"
            ]))
        
        self.releases.append(Release.init(JSONData: [
            "id" : 7,
            "displayImageUrl" : "shoes3.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'Pure Platinum'",
            "date" : "6/30/16",
            "price" : " -  $300.00"
            ]))
        
        self.releases.append(Release.init(JSONData: [
            "id" : 8,
            "displayImageUrl" : "shoes4.jpg",
            "name" : "Foamposites",
            "detail" : "'Gold'",
            "date" : "7/15/16",
            "price" : " -  $150.00"
            ]))
    }
    
    func addTapped (sender:UIButton) {
        // print("add pressed")
        performSegueWithIdentifier("segue3", sender: self)
    }

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        tabBarItem = UITabBarItem(title: " ", image: nil, tag: 2)
        tabBarItem.image = UIImage.fontAwesomeIconWithName(.Calendar, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return releases.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ReleaseCell") as! ReleaseCell
        let release: Release = releases[indexPath.row]
        
        //cell.imageContainer.af_setImageWithURL(NSURL(string: post.profileImageUrl)!, placeholderImage: UIImage(named: "green_background.jpeg"))
        
        cell.displayImageView.image = UIImage(named: release.displayImageUrl)
        cell.nameLabel.text = release.name
        cell.detailLabel.text = release.detail
        cell.priceLabel.text = release.price
        cell.dateLabel.text = release.date
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 75
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRectMake(0, 30, UIScreen.mainScreen().bounds.width, 64))
        return view
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
//    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 64
//    }
    
    
}