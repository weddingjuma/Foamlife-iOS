//
//  Configuration.swift
//  Foamlife
//
//  Created by Danielle Williams on 4/6/16.
//  Copyright © 2016 Wave Link, LLC. All rights reserved.
//

import UIKit

class Configuration {
    
    static let Default = Configuration()
    var font: String = "DINAlternate-Bold"
    
    func verticalGradientLayer(size: CGSize, topColor: UIColor, bottomColor: UIColor) -> CAGradientLayer {
        let layer: CAGradientLayer = CAGradientLayer()
        layer.frame.size = size
        layer.frame.origin = CGPointMake(0.0,0.0)
        layer.colors = [topColor.CGColor, bottomColor.CGColor]
        layer.locations = [0.0, 1.0]
        return layer
    }
    
    func backgroundLayer(size: CGSize) -> CAGradientLayer {
        let layer: CAGradientLayer = CAGradientLayer()
        layer.frame.size = size
        layer.frame.origin = CGPointMake(0.0,0.0)
        layer.colors = [UIColor.whiteSmokeColor().CGColor]
        layer.locations = [0.0, 1.0]
        layer.opacity = 0.925
        return layer
    }
    
}