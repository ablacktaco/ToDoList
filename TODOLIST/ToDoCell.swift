//
//  ToDoCell.swift
//  TODOLIST
//
//  Created by 陳姿穎 on 2019/8/8.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    @IBOutlet var thingsToDo: UITextField!
    @IBOutlet var checkedImage: UIImageView!
    
}
