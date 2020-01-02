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
            titleTextField.text = savedData.lists[sender.selectedSegmentIndex].title
            titleTextField.textColor = savedData.listsColor[sender.selectedSegmentIndex]
        default: break
        }
        toDoListTable.reloadData()
    }
    
    @objc func whenKeyboardShow(_ notification: Notification) {
        let userInfo = notification.userInfo!
        let keyboardSize = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let intersection = keyboardSize.intersection(self.view.frame)
        view.frame.size = CGSize(width: view.frame.width, height: view.frame.height - intersection.height)
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
        switch listSegmented.selectedSegmentIndex {
        case 0..<savedData.lists[listSegmented.selectedSegmentIndex].data.count:
            let cellIdentifier = "toDoCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ToDoCell
            cell.selectionStyle = .none
            
            return cell
        default:
            let cellIdentifier = "addCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! AddCell
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
//    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completionHandler) in
//            switch self.listSegmented.selectedSegmentIndex {
//            case 0:
//                self.toDoList1.remove(at: indexPath.row)
//                self.checked1.remove(at: indexPath.row)
//                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
//                saveData.setListOneData(self.toDoList1)
//                saveData.setListOneChecked(self.checked1)
//            case 1:
//                self.toDoList2.remove(at: indexPath.row)
//                self.checked2.remove(at: indexPath.row)
//                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
//                saveData.setListTwoData(self.toDoList2)
//                saveData.setListTwoChecked(self.checked2)
//            case 2:
//                self.toDoList3.remove(at: indexPath.row)
//                self.checked3.remove(at: indexPath.row)
//                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
//                saveData.setListThreeData(self.toDoList3)
//                saveData.setListThreeChecked(self.checked3)
//            case 3:
//                self.toDoList4.remove(at: indexPath.row)
//                self.checked4.remove(at: indexPath.row)
//                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
//                saveData.setListFourData(self.toDoList4)
//                saveData.setListFourChecked(self.checked4)
//            case 4:
//                self.toDoList5.remove(at: indexPath.row)
//                self.checked5.remove(at: indexPath.row)
//                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
//                saveData.setListFiveData(self.toDoList5)
//                saveData.setListFiveChecked(self.checked5)
//            case 5:
//                self.toDoList6.remove(at: indexPath.row)
//                self.checked6.remove(at: indexPath.row)
//                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
//                saveData.setListSixData(self.toDoList6)
//                saveData.setListSixChecked(self.checked6)
//            case 6:
//                self.toDoList7.remove(at: indexPath.row)
//                self.checked7.remove(at: indexPath.row)
//                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
//                saveData.setListSevenData(self.toDoList7)
//                saveData.setListSevenChecked(self.checked7)
//            default: break
//            }
//            completionHandler(true)
//        }
//        
//        deleteAction.backgroundColor = UIColor(red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
//        deleteAction.image = UIImage(named: "delete")
//
//        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
//
//        return swipeConfiguration
//    }
    
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
