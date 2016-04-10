//
//  NewsCell.swift
//  Foamlife
//
//  Created by Kelvin Graddick on 4/9/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    
    var titleTextView: UITextView!
    var contentTextView: UITextView!
    var displayImageView: UIImageView!
    var sourceNameLabel: UILabel!
    var sourceImageView: UIImageView!
    var timeStampLabel: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        super.init(style: UITableViewCellStyle.Value1, reuseIdentifier: reuseIdentifier)
        
        let postPadding = 10 as CGFloat
        let displayImageSize = 100 as CGFloat
        let bigTextFontSize = 16 as CGFloat
        let mediumTextFontSize = 15 as CGFloat
        let smallTextFontSize = 12 as CGFloat
        let textWidth = UIScreen.mainScreen().bounds.width - displayImageSize - (postPadding * 2)
    
        titleTextView = UITextView(frame: CGRectMake(postPadding, 0, textWidth, (bigTextFontSize * 2) + postPadding))
        titleTextView.userInteractionEnabled = false
        titleTextView.font = UIFont(name: Configuration.Default.font, size: bigTextFontSize)
        titleTextView.textColor = UIColor.nightColor()
        self.addSubview(titleTextView)
        
        contentTextView = UITextView(frame: CGRectMake(postPadding, titleTextView.frame.origin.y + titleTextView.frame.size.height + postPadding, textWidth, (mediumTextFontSize * 4)))
        contentTextView.userInteractionEnabled = false
        contentTextView .font = UIFont(name: "AppleSDGothicNeo-Light", size: mediumTextFontSize)
        contentTextView.textColor = UIColor.nightColor()
        self.addSubview(contentTextView)
        
        sourceNameLabel = UILabel(frame: CGRectMake(postPadding + 5, contentTextView.frame.origin.y + contentTextView.frame.size.height + postPadding, textWidth, smallTextFontSize))
        sourceNameLabel.font = UIFont(name: Configuration.Default.font, size: smallTextFontSize)
        sourceNameLabel.textColor = UIColor.grayColor()
        self.addSubview(sourceNameLabel)
        
        timeStampLabel = UILabel(frame: CGRectMake(UIScreen.mainScreen().bounds.width - displayImageSize - postPadding, sourceNameLabel.frame.origin.y, displayImageSize, smallTextFontSize))
        timeStampLabel.textAlignment = .Right
        timeStampLabel.font = UIFont(name: Configuration.Default.font, size: smallTextFontSize)
        timeStampLabel.textColor = UIColor.darkGoldColor()
        self.addSubview(timeStampLabel)
        
        displayImageView = UIImageView(frame: CGRectMake(UIScreen.mainScreen().bounds.width - displayImageSize - postPadding, postPadding, displayImageSize, displayImageSize))
        displayImageView.contentMode = .ScaleAspectFill
        displayImageView.layer.cornerRadius = 3
        displayImageView.clipsToBounds = true
        displayImageView.image = UIImage(named: "construction.png")
        self.addSubview(displayImageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
