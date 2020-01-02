//
//  UIColor+Ext.swift
//  TODOLIST
//
//  Created by 陳姿穎 on 2019/8/15.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int) {
        let red = CGFloat(red) / 255.0
        let green = CGFloat(green) / 255.0
        let blue = CGFloat(blue) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
}

extension UIColor {
    
    static let tiffany = UIColor(red: 10, green: 186, blue: 181)
    static let coral = UIColor(red: 252, green: 118, blue: 106)
    static let pale = UIColor(red: 122, green: 184, blue: 204)
    static let aspen = UIColor(red: 255, green: 216, blue: 88)
    static let greenery = UIColor(red: 136, green: 176, blue: 75)
    static let violet = UIColor(red: 100, green: 83, blue: 148)
    static let turmeric = UIColor(red: 254, green: 132, blue: 14)
    
}
