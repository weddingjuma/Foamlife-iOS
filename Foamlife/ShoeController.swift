//
//  ShoeController.swift
//  FoamlifeApp
//
//  Created by Danielle Williams on 7/15/16.
//  Copyright © 2016 WavelinkLLC. All rights reserved.
//

import UIKit

class ShoeController: UITableViewController {
    private var shoes: [Shoe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.goldColor()
        
        tableView.registerClass(ShoeCell.self, forCellReuseIdentifier: "ShoeCell")
        tableView.tableFooterView = UIView()
        self.view.layer.insertSublayer(Configuration.Default.backgroundLayer(self.view.frame.size), atIndex: 0)
        
        let navigationBar = UINavigationBar(frame: CGRectMake(0, -20, self.view.frame.size.width, 60))
        navigationBar.barTintColor = UIColor.goldColor()
        navigationBar.tintColor = UIColor.whiteColor()
        navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: Configuration.Default.font, size: 15)!, NSForegroundColorAttributeName: UIColor.darkGoldColor()]
        
        let navigationItem = UINavigationItem()
        navigationItem.title = "SHOE COLLECTION"
        
        let rightAddBarButtonItem:UIBarButtonItem = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(ShoeController.addTapped))
        rightAddBarButtonItem.image = UIImage.fontAwesomeIconWithName(.Gear, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        
        navigationItem.setRightBarButtonItems([rightAddBarButtonItem], animated: true)
        
        navigationBar.items = [navigationItem]
        
        self.view.addSubview(navigationBar)
        
        self.tabBarController?.tabBar.tintColor  = UIColor.goldColor()
        self.tabBarController?.tabBar.barTintColor = UIColor.nightColor()
        
        
        self.shoes.append(Shoe.init(JSONData: [
            "id" : 1,
            "displayImageUrl" : "shoes1.jpg",
            "name" : "Foamposites",
            "detail" : "'Wu-Tang'",
            "date" : "5/30/16",
            "price" : " -  $150.00"
            ]))
        
        
        self.shoes.append(Shoe.init(JSONData: [
            "id" : 2,
            "displayImageUrl" : "shoes2.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'University Red'",
            "date" : "5/30/16",
            "price" : " -  $250.00"
            ]))
        
        
        self.shoes.append(Shoe.init(JSONData: [
            "id" : 3,
            "displayImageUrl" : "shoes3.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'Pure Platinum'",
            "date" : "6/01/16",
            "price" : " -  $300.00"
            ]))
        
        self.shoes.append(Shoe.init(JSONData: [
            "id" : 4,
            "displayImageUrl" : "shoes4.jpg",
            "name" : "Foamposites",
            "detail" : "'Gold'",
            "date" : "6/01/16",
            "price" : " -  $150.00"
            ]))
        
        
        self.shoes.append(Shoe.init(JSONData: [
            "id" : 5,
            "displayImageUrl" : "shoes2.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'University Red'",
            "date" : "6/15/16",
            "price" : " -  $150.00"
            ]))
        
        
        self.shoes.append(Shoe.init(JSONData: [
            "id" : 6,
            "displayImageUrl" : "shoes1.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'Pure Platinum'",
            "date" : "6/15/16",
            "price" : " -  $350.00"
            ]))
        
        self.shoes.append(Shoe.init(JSONData: [
            "id" : 7,
            "displayImageUrl" : "shoes3.jpg",
            "name" : "Nike Air Foamposite Pro",
            "detail" : "'Pure Platinum'",
            "date" : "6/30/16",
            "price" : " -  $300.00"
            ]))
        
        self.shoes.append(Shoe.init(JSONData: [
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
        performSegueWithIdentifier("segue4", sender: self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        tabBarItem = UITabBarItem(title: " ", image: nil, tag: 3)
        tabBarItem.image = UIImage.fontAwesomeIconWithName(.Star, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return shoes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ShoeCell") as! ShoeCell
        let shoe: Shoe = shoes[indexPath.row]
        
        //cell.imageContainer.af_setImageWithURL(NSURL(string: post.profileImageUrl)!, placeholderImage: UIImage(named: "green_background.jpeg"))
        
        cell.displayImageView.image = UIImage(named: shoe.displayImageUrl)
        cell.nameLabel.text = shoe.name
        cell.detailLabel.text = shoe.detail
        
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
