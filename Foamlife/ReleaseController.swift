//
//  ReleaseController.swift
//  Foamlife
//
//  Created by Danielle Williams on 4/4/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import UIKit

class ReleaseController: UITableViewController, UINavigationBarDelegate {
        
        private var releases: [Release] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.tableView.registerClass(ReleaseCell.self, forCellReuseIdentifier: "ReleaseCell")
            
            self.view.backgroundColor = UIColor.goldColor()
            
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
    
        override func viewDidAppear(animated: Bool) {
            
            
            let navigationBar = UINavigationBar(frame: CGRectMake(0, 20, self.view.frame.size.width, 44))
            navigationBar.barTintColor = UIColor.goldColor()
            navigationBar.tintColor = UIColor.whiteColor()
            navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: Configuration.Default.font, size: 15)!, NSForegroundColorAttributeName: UIColor.darkGoldColor()]
            navigationBar.translucent = false
            navigationBar.delegate = self;
            
            let navigationItem = UINavigationItem()
            navigationItem.title = "UPCOMING RELEASES"
            let rightButton = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: "buttonClick:")
            rightButton.image = UIImage.fontAwesomeIconWithName(.Gear, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
            navigationItem.rightBarButtonItem = rightButton
            navigationBar.items = [navigationItem]
            
            self.view.addSubview(navigationBar)
        }
        
        func positionForBar(bar: UIBarPositioning!) -> UIBarPosition {
            return UIBarPosition.TopAttached
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
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

    
        override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let view = UIView(frame: CGRectMake(0, 30, UIScreen.mainScreen().bounds.width, 64))
            return view
        }
        
        override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 64
        }
        

}