//
//  ListPage.swift
//  TODOLIST
//
//  Created by 陳姿穎 on 2019/8/15.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

struct PageModel: Codable {
    
    var title: String = "Title"
    var data: [Data] = []
    
    struct Data: Codable {
        
        var thing: String = ""
        var checked: Bool = false
        
    }
    
}
