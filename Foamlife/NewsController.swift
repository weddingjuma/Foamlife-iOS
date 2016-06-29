
//
//  NewsController.swift
//  Foamlife
//
//  Created by Kelvin Graddick on 3/31/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import UIKit

class NewsController: UITableViewController, UINavigationBarDelegate {
    
    private var articles: [Article] = []
    var rightButton: UIBarButtonItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(NewsCell.self, forCellReuseIdentifier: "NewsCell")
        
        self.view.backgroundColor = UIColor.goldColor()
        
        self.articles.append(Article.init(JSONData: [
            "id" : 1,
            "title" : "First Look At The “Wu-Tang” Foamposites",
            "content" : "The legendary Wu-Tang Clan may have one of the sought-after Nike collaborations in history – the yellow/black “Wu-Tang” Dunk High that surfaced back in 1999. Since th...",
            "displayImageUrl" : "shoes1.jpg",
            "sourceName" : "Sneakernews.com",
            "sourceImageUrl" : "http://unihouse.anu.edu.au/wp-content/uploads/2013/11/restaurant.jpeg",
            "timeStamp" : "2 hours ago"
        ]))
        
        self.articles.append(Article.init(JSONData: [
            "id" : 2,
            "title" : "Nike Air Foamposite Pro “University Red” Releases In April",
            "content" : "2016 started off in a huge way for the Nike Air Foamposite Pro with another “Yeezy” release, but things are about to heat up a bit with a much-requested colorway in the spo...",
            "displayImageUrl" : "shoes2.jpg",
            "sourceName" : "Sneakernews.com",
            "sourceImageUrl" : "http://unihouse.anu.edu.au/wp-content/uploads/2013/11/restaurant.jpeg",
            "timeStamp" : "6 days ago"
        ]))
        
        self.articles.append(Article.init(JSONData: [
            "id" : 3,
            "title" : "The Nike Air Foamposite Pro “Pure Platinum” Is Releasing Sooner Than Expected",
            "content" : "Despite a few years between first and last releases, the trio of “Yeezy” inspired Foamposites is finally complete. While the sneaker has an official release date of March 1...",
            "displayImageUrl" : "shoes3.jpg",
            "sourceName" : "Sneakernews.com",
            "sourceImageUrl" : "http://unihouse.anu.edu.au/wp-content/uploads/2013/11/restaurant.jpeg",
            "timeStamp" : "1 week ago"
        ]))
        
        self.articles.append(Article.init(JSONData: [
            "id" : 4,
            "title" : "First Look At The “Wu-Tang” Foamposites",
            "content" : "The legendary Wu-Tang Clan may have one of the sought-after Nike collaborations in history – the yellow/black “Wu-Tang” Dunk High that surfaced back in 1999. Since th...",
            "displayImageUrl" : "shoes1.jpg",
            "sourceName" : "Sneakernews.com",
            "sourceImageUrl" : "http://unihouse.anu.edu.au/wp-content/uploads/2013/11/restaurant.jpeg",
            "timeStamp" : "2 hours ago"
        ]))
        
        self.articles.append(Article.init(JSONData: [
            "id" : 5,
            "title" : "Nike Air Foamposite Pro “University Red” Releases In April",
            "content" : "2016 started off in a huge way for the Nike Air Foamposite Pro with another “Yeezy” release, but things are about to heat up a bit with a much-requested colorway in the spo...",
            "displayImageUrl" : "shoes2.jpg",
            "sourceName" : "Sneakernews.com",
            "sourceImageUrl" : "http://unihouse.anu.edu.au/wp-content/uploads/2013/11/restaurant.jpeg",
            "timeStamp" : "6 days ago"
        ]))
        
        self.articles.append(Article.init(JSONData: [
            "id" : 6,
            "title" : "THE NIKE AIR FOAMPOSITE PRO “PURE PLATINUM” IS RELEASING SOONER THAN EXPECTED",
            "content" : "Despite a few years between first and last releases, the trio of “Yeezy” inspired Foamposites is finally complete. While the sneaker has an official release date of March 1...",
            "displayImageUrl" : "shoes3.jpg",
            "sourceName" : "Sneakernews.com",
            "sourceImageUrl" : "http://unihouse.anu.edu.au/wp-content/uploads/2013/11/restaurant.jpeg",
            "timeStamp" : "1 week ago"
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
        navigationItem.title = "NEWS"
        
        let rightButton = UIBarButtonItem(title: " ", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(NewsController.buttonClick))
        rightButton.image = UIImage.fontAwesomeIconWithName(.Gear, textColor: UIColor.blackColor(), size: CGSizeMake(30, 30))
        navigationItem.rightBarButtonItem = rightButton
        navigationBar.items = [navigationItem]
        
        self.view.addSubview(navigationBar)

    }
    
    func buttonClick(sender: UIBarButtonItem) {
//                let alert = UIAlertView(title: "Choose", message: "?????", delegate: self, cancelButtonTitle:"1")
//                alert.addButtonWithTitle("2")
//        
//                alert.show()
    // rightButtonItem = sender.view as? SettingsController
       performSegueWithIdentifier("segue1", sender: self)
    }
    
    func positionForBar(bar: UIBarPositioning!) -> UIBarPosition {
        return UIBarPosition.TopAttached
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NewsCell") as! NewsCell
        let article: Article = articles[indexPath.row]
        
        //cell.imageContainer.af_setImageWithURL(NSURL(string: post.profileImageUrl)!, placeholderImage: UIImage(named: "green_background.jpeg"))
        
        cell.titleTextView.text = article.title
        cell.contentTextView.text = article.content
        cell.timeStampLabel.text = article.timeStamp
        cell.sourceNameLabel.text = article.sourceName
        cell.displayImageView.image = UIImage(named: article.displayImageUrl)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 145
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRectMake(0, 30, UIScreen.mainScreen().bounds.width, 64))
        return view
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 64
    }

}

