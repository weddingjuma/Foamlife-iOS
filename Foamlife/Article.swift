//
//  Article.swift
//  Foamlife
//
//  Created by Kelvin Graddick on 4/9/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import Foundation

class Article: NSObject {
    
    var id: Int = 0
    var title: String = ""
    var content: String = ""
    var displayImageUrl: String = ""
    var sourceName: String = ""
    var sourceImageUrl: String = ""
    var timeStamp: String = ""
    
    override init() {
        super.init()
    }
    
    init(JSONData: Dictionary<String, AnyObject>) {
        super.init()
        self.setValuesForKeysWithDictionary(JSONData)
    }
    
}

