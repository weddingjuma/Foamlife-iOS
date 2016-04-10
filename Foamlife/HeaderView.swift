//
//  HeaderView.swift
//  Foamlife
//
//  Created by Danielle Williams on 4/6/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(frame: CGRect, title: String, icon: String, color: UIColor) {
        super.init(frame: frame)
        
        let textHeight = 20 as CGFloat
        let titleLabel = UILabel(frame: CGRect(x: frame.origin.x + frame.width + 10, y: ((textHeight * 1.5) / 2), width: frame.width - frame.height, height: textHeight * 1.5)) as UILabel
        titleLabel.font = UIFont(name: Configuration.Default.font, size: textHeight)
        titleLabel.text = title
        self.addSubview(titleLabel)
        
        self.layer.insertSublayer(Configuration.Default.backgroundLayer(self.frame.size), atIndex: 0)
    }
    
}
