//
//  addCell.swift
//  TODOLIST
//
//  Created by 陳姿穎 on 2019/8/19.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

class AddCell: UITableViewCell {
    
    let savedData = SavedData.shared
    var index: Int = 0
    
    @IBOutlet var addButton: UIButton!
    @IBAction func tapToAddData(_ sender: UIButton) {
        savedData.lists[index].data.append(PageModel.Data())
    }
    
}

extension AddCell {
    
    func setTintColor() {
        addButton.tintColor = savedData.listsColor[index]
    }
    
}
