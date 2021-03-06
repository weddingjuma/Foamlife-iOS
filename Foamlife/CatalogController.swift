//
//  CatalogController.swift
//  FoamlifeApp
//
//  Created by Danielle Williams on 7/14/16.
//  Copyright © 2016 WavelinkLLC. All rights reserved.
//

import UIKit

class CatalogController: UITableViewController {
    private var catalogs: [Catalog] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.goldColor()
        
        tableView.registerClass(CatalogCell.self, forCellReuseIdentifier: "CatalogCell")
        tableView.tableFooterView = UIView()
        self.view.layer.insertSublayer(Configuration.Default.backgroundLayer(self.view.frame.size), atIndex: 0)
        
        let navigationBar = UINavigationBar(frame: CGRectMake(0, -20, self.view.frame.size.width, 60))
        navigationBar.barTintColor = UIColor.goldColor()
        navigationBar.tintColor = UIColor.whiteColor()
        navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: Configuration.Default.font, size: 15)!, NSForegroundColorAttributeName: UIColor.darkGoldColor()]
        
        let navigationItem = UINavigationItem()
        navigationItem.title = "HISTORY"
        
        //        let rightAddBarButtonItem:UIBarButtonItem = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(ShoeController.addTapped))
        //        rightAddBarButtonItem.image = UIImage.fontAwesomeIconWithName(.Gear, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        //
        //        navigationItem.setRightBarButtonItems([rightAddBarButtonItem], animated: true)
        
        navigationBar.items = [navigationItem]
        
        self.view.addSubview(navigationBar)
        
        self.tabBarController?.tabBar.tintColor  = UIColor.goldColor()
        self.tabBarController?.tabBar.barTintColor = UIColor.nightColor()
        
        
        self.catalogs.append(Catalog.init(JSONData: [
            "id" : 1,
            "displayImageUrl" : "shoes1.jpg",
            "name" : "Foamposites",
            "detail" : "'Wu-Tang'",
            "price" : "$150.00"
            ]))
        
        
        self.catalogs.append(Catalog.init(JSONData: [
            "id" : 2,
            "displayImageUrl" : "shoes2.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'University Red'",
            "price" : "$250.00"
            ]))
        
        
        self.catalogs.append(Catalog.init(JSONData: [
            "id" : 3,
            "displayImageUrl" : "shoes3.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'Pure Platinum'",
            "price" : "$300.00"
            ]))
        
        self.catalogs.append(Catalog.init(JSONData: [
            "id" : 4,
            "displayImageUrl" : "shoes4.jpg",
            "name" : "Foamposites",
            "detail" : "'Gold'",
            "price" : "$150.00"
            ]))
        
        
        self.catalogs.append(Catalog.init(JSONData: [
            "id" : 5,
            "displayImageUrl" : "shoes2.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'University Red'",
            "price" : "$150.00"
            ]))
        
        
    }
    
    //    func addTapped (sender:UIButton) {
    //        // print("add pressed")
    //        performSegueWithIdentifier("segue4", sender: self)
    //    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        tabBarItem = UITabBarItem(title: " ", image: nil, tag: 3)
        tabBarItem.image = UIImage.fontAwesomeIconWithName(.Star, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return catalogs.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CatalogCell") as! CatalogCell
        let catalog: Catalog = catalogs[indexPath.row]
        
        //cell.imageContainer.af_setImageWithURL(NSURL(string: post.profileImageUrl)!, placeholderImage: UIImage(named: "green_background.jpeg"))
        
        cell.displayImageView.image = UIImage(named: catalog.displayImageUrl)
        cell.nameLabel.text = catalog.name
        cell.detailLabel.text = catalog.detail
        cell.priceLabel.text = catalog.price
        
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
    
    
}
