//
//  ToDoCell.swift
//  TODOLIST
//
//  Created by 陳姿穎 on 2019/8/8.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {
    
    let savedData = SavedData.shared
    var index: Int = 0
    
    @IBOutlet var checkedButton: UIButton!
    @IBOutlet var toDoText: UITextField!
    
    @IBAction func tapToSwitchCheckedState(_ sender: UIButton) {
        savedData.lists[index].data[sender.tag].checked.toggle()
        sender.setImage(UIImage(named: savedData.lists[index].data[sender.tag].checked ? "checked" : "unchecked"), for: .normal)
    }
    @IBAction func saveThingsToDo(_ sender: UITextField) {
        savedData.lists[index].data[sender.tag].thing = sender.text!
    }
    
}

extension ToDoCell {
    
    func setData(_ row: Int) {
        checkedButton.setImage(UIImage(named: savedData.lists[index].data[row].checked ? "checked" : "unchecked"), for: .normal)
        checkedButton.tintColor = savedData.listsColor[index]
        toDoText.text = savedData.lists[index].data[row].thing
    }
    
}
