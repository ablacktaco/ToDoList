//
//  ViewController.swift
//  TODOLIST
//
//  Created by 陳姿穎 on 2019/8/8.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let savedData = SavedData.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextField.text = savedData.lists[listSegmented.selectedSegmentIndex].title
        toDoListTable.tableFooterView = UIView()
        
        NotificationCenter.default.addObserver(self, selector: #selector(whenKeyboardShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(whenKeyboardHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @IBOutlet var listSegmented: UISegmentedControl!
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var toDoListTable: UITableView!
    
    @IBAction func switchList(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0..<savedData.lists.count:
            sender.tintColor = savedData.listsColor[sender.selectedSegmentIndex]
            titleTextField.text = savedData.lists[sender.selectedSegmentIndex].title
            titleTextField.textColor = savedData.listsColor[sender.selectedSegmentIndex]
        default: break
        }
        toDoListTable.reloadData()
    }
    @IBAction func saveTitle(_ sender: UITextField) {
        savedData.lists[listSegmented.selectedSegmentIndex].title = sender.text!
    }
    
    @objc func whenKeyboardShow(_ notification: Notification) {
        let userInfo = notification.userInfo!
        let keyboardSize = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let intersection = keyboardSize.intersection(self.view.frame)
        view.frame.size = CGSize(width: view.frame.width, height: view.frame.height - intersection.height + 1)
    }
    @objc func whenKeyboardHide(_ notification: Notification) {
        view.frame.size = CGSize(width: view.frame.width, height: UIScreen.main.bounds.height)
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedData.lists[listSegmented.selectedSegmentIndex].data.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0..<savedData.lists[listSegmented.selectedSegmentIndex].data.count:
            let cellIdentifier = "toDoCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ToDoCell
            cell.selectionStyle = .none
            
            cell.index = listSegmented.selectedSegmentIndex
            cell.checkedButton.tag = indexPath.row
            cell.toDoText.tag = indexPath.row
            cell.setData(indexPath.row)
            
            return cell
        default:
            let cellIdentifier = "addCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! AddCell
            cell.selectionStyle = .none
            
            cell.toDoListTable = tableView
            cell.index = listSegmented.selectedSegmentIndex
            cell.setTintColor()
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        switch indexPath.row {
        case 0..<savedData.lists[listSegmented.selectedSegmentIndex].data.count: return true
        default: return false
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            savedData.lists[listSegmented.selectedSegmentIndex].data.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
