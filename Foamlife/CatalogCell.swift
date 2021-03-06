//
//  CatalogCell.swift
//  Foamlife
//
//  Created by Danielle Williams on 4/8/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import Foundation
import UIKit

class Catalog: NSObject {
    
    var id: Int = 0
    var displayImageUrl: String = ""
    var name: String = ""
    var detail: String = ""
    var price: String = ""
    
    override init() {
        super.init()
    }
    
    init(JSONData: Dictionary<String, AnyObject>) {
        super.init()
        self.setValuesForKeysWithDictionary(JSONData)
    }
    
}

class CatalogCell: UITableViewCell {
    
    var displayImageView: UIImageView!
    var nameLabel: UILabel!
    var detailLabel: UILabel!
    var priceLabel: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        super.init(style: UITableViewCellStyle.Value1, reuseIdentifier: reuseIdentifier)
        
        let postPadding = 10 as CGFloat
        let displayImageSize = 100 as CGFloat
        let bigTextFontSize = 16 as CGFloat
        let mediumTextFontSize = 15 as CGFloat
        let smallTextFontSize = 12 as CGFloat
        let textWidth = UIScreen.mainScreen().bounds.width - displayImageSize - (postPadding * 2)
        
        displayImageView = UIImageView(frame: CGRectMake(postPadding, postPadding, displayImageSize - 50, displayImageSize - 50))
        displayImageView.contentMode = .ScaleAspectFill
        displayImageView.layer.cornerRadius = 3
        displayImageView.clipsToBounds = true
        displayImageView.image = UIImage(named: "construction.png")
        self.addSubview(displayImageView)
        
        nameLabel = UILabel(frame: CGRectMake(postPadding + 65, postPadding + 2, textWidth, bigTextFontSize))
        nameLabel.font = UIFont(name: Configuration.Default.font, size: bigTextFontSize)
        nameLabel.textColor = UIColor.nightColor()
        self.addSubview(nameLabel)
        
        detailLabel = UILabel(frame: CGRectMake(postPadding + 65, nameLabel.frame.origin.y + 8 + postPadding, textWidth, mediumTextFontSize))
        detailLabel.font = UIFont(name: "AppleSDGothicNeo-Light", size: mediumTextFontSize)
        detailLabel.textColor = UIColor.nightColor()
        self.addSubview(detailLabel)
        
        priceLabel = UILabel(frame: CGRectMake(postPadding + 65, detailLabel.frame.origin.y + 8 + postPadding, displayImageSize, smallTextFontSize))
        // priceLabel.textAlignment = .Right
        priceLabel.font = UIFont(name: Configuration.Default.font, size: smallTextFontSize)
        priceLabel.textColor = UIColor.darkGoldColor()
        self.addSubview(priceLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}



