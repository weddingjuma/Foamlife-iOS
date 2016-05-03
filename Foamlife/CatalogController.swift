//
//  SecondViewController.swift
//  Foamlife
//
//  Created by Kelvin Graddick on 3/31/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import UIKit


class CatalogController: UITableViewController, UINavigationBarDelegate {
    
    private var catalogs: [Catalog] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(CatalogCell.self, forCellReuseIdentifier: "CatalogCell")
        
        self.view.backgroundColor = UIColor.goldColor()
        
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
    
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        let navigationBar = UINavigationBar(frame: CGRectMake(0, 20, self.view.frame.size.width, 44))
        navigationBar.barTintColor = UIColor.goldColor()
        navigationBar.tintColor = UIColor.whiteColor()
        navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: Configuration.Default.font, size: 15)!, NSForegroundColorAttributeName: UIColor.darkGoldColor()]
        navigationBar.translucent = false
        navigationBar.delegate = self;
        
        let navigationItem = UINavigationItem()
        navigationItem.title = "CATALOG"
        let rightButton = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        rightButton.image = UIImage.fontAwesomeIconWithName(.Gear, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        navigationItem.rightBarButtonItem = rightButton
        navigationBar.items = [navigationItem]
        
        self.view.addSubview(navigationBar)
    }
    
    func positionForBar(bar: UIBarPositioning!) -> UIBarPosition {
        return UIBarPosition.TopAttached
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 2
        case 1: return 4
        case 2: return 1
        default: return 0
        }
        //return catalogs.count
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRectMake(0, 30, UIScreen.mainScreen().bounds.width, 64))
        return view
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 64
    }
    
    
}