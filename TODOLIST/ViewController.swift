//
//  ViewController.swift
//  TODOLIST
//
//  Created by 陳姿穎 on 2019/8/8.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    @IBOutlet var listSegmented: UISegmentedControl!
    @IBAction func listSwitch(_ sender: UISegmentedControl) {
        toDoListTable.reloadData()
        switch listSegmented.selectedSegmentIndex {
        case 0:
            listSegmented.tintColor = UIColor(red: 10.0/255.0, green: 186.0/255.0, blue: 181.0/255.0, alpha: 1.0)
            titleTextField.text = saveData.getListTitle()[0]
            titleTextField.textColor = UIColor(red: 10.0/255.0, green: 186.0/255.0, blue: 181.0/255.0, alpha: 1.0)
            addButton.setBackgroundImage(UIImage(named: "add-tiffany"), for: .normal)
        case 1:
            listSegmented.tintColor = UIColor(red: 252.0/255.0, green: 118.0/255.0, blue: 106.0/255.0, alpha: 1.0)
            titleTextField.text = saveData.getListTitle()[1]
            titleTextField.textColor = UIColor(red: 252.0/255.0, green: 118.0/255.0, blue: 106.0/255.0, alpha: 1.0)
            addButton.setBackgroundImage(UIImage(named: "add-coral"), for: .normal)
        case 2:
            listSegmented.tintColor = UIColor(red: 122.0/255.0, green: 184.0/255.0, blue: 204.0/255.0, alpha: 1.0)
            titleTextField.text = saveData.getListTitle()[2]
            titleTextField.textColor = UIColor(red: 122.0/255.0, green: 184.0/255.0, blue: 204.0/255.0, alpha: 1.0)
            addButton.setBackgroundImage(UIImage(named: "add-pale"), for: .normal)
        case 3:
            listSegmented.tintColor = UIColor(red: 255.0/255.0, green: 216.0/255.0, blue: 88.0/255.0, alpha: 1.0)
            titleTextField.text = saveData.getListTitle()[3]
            titleTextField.textColor = UIColor(red: 255.0/255.0, green: 216.0/255.0, blue: 88.0/255.0, alpha: 1.0)
            addButton.setBackgroundImage(UIImage(named: "add-aspen"), for: .normal)
        case 4:
            listSegmented.tintColor = UIColor(red: 136.0/255.0, green: 176.0/255.0, blue: 75.0/255.0, alpha: 1.0)
            titleTextField.text = saveData.getListTitle()[4]
            titleTextField.textColor = UIColor(red: 136.0/255.0, green: 176.0/255.0, blue: 75.0/255.0, alpha: 1.0)
            addButton.setBackgroundImage(UIImage(named: "add-greenery"), for: .normal)
        case 5:
            listSegmented.tintColor = UIColor(red: 100.0/255.0, green: 83.0/255.0, blue: 148.0/255.0, alpha: 1.0)
            titleTextField.text = saveData.getListTitle()[5]
            titleTextField.textColor = UIColor(red: 100.0/255.0, green: 83.0/255.0, blue: 148.0/255.0, alpha: 1.0)
            addButton.setBackgroundImage(UIImage(named: "add-violet"), for: .normal)
        case 6:
            listSegmented.tintColor = UIColor(red: 254.0/255.0, green: 132.0/255.0, blue: 14.0/255.0, alpha: 1.0)
            titleTextField.text = saveData.getListTitle()[6]
            titleTextField.textColor = UIColor(red: 254.0/255.0, green: 132.0/255.0, blue: 14.0/255.0, alpha: 1.0)
            addButton.setBackgroundImage(UIImage(named: "add-turmeric"), for: .normal)
        default: break
        }
    }
    
    @IBOutlet var toDoListTable: UITableView!
    
    @IBOutlet var titleTextField: UITextField!
    @IBAction func titleTextField(_ sender: UITextField) {
        switch listSegmented.selectedSegmentIndex {
        case 0:
            listTitle[0] = titleTextField.text!
        case 1:
            listTitle[1] = titleTextField.text!
        case 2:
            listTitle[2] = titleTextField.text!
        case 3:
            listTitle[3] = titleTextField.text!
        case 4:
            listTitle[4] = titleTextField.text!
        case 5:
            listTitle[5] = titleTextField.text!
        case 6:
            listTitle[6] = titleTextField.text!
        default: break
        }
        saveData.setListTitle(listTitle)
    }
    
    @IBOutlet var toDoThingsText: UITextField!
    @IBAction func toDoThingsText(_ sender: UITextField) {
        switch listSegmented.selectedSegmentIndex {
        case 0:
            saveData.setListOneData(toDoList1)
        case 1:
            saveData.setListTwoData(toDoList2)
        case 2:
            saveData.setListThreeData(toDoList3)
        case 3:
            saveData.setListFourData(toDoList4)
        case 4:
            saveData.setListFiveData(toDoList5)
        case 5:
            saveData.setListSixData(toDoList6)
        case 6:
            saveData.setListSevenData(toDoList7)
        default: break
        }
    }
    @IBOutlet var addButton: UIButton!
    @IBAction func addButton(_ sender: UIButton) {
        switch listSegmented.selectedSegmentIndex {
        case 0:
            if toDoThingsText.text != "" {
                toDoList1.append(toDoThingsText.text!)
                toDoThingsText.text = ""
                checked1.append(false)
                saveData.setListOneData(toDoList1)
                saveData.setListOneChecked(checked1)
            }
            toDoListTable.reloadData()
        case 1:
            if toDoThingsText.text != "" {
                toDoList2.append(toDoThingsText.text!)
                toDoThingsText.text = ""
                checked2.append(false)
                saveData.setListTwoData(toDoList2)
                saveData.setListTwoChecked(checked2)
            }
            toDoListTable.reloadData()
        case 2:
            if toDoThingsText.text != "" {
                toDoList3.append(toDoThingsText.text!)
                toDoThingsText.text = ""
                checked3.append(false)
                saveData.setListThreeData(toDoList3)
                saveData.setListThreeChecked(checked3)
            }
            toDoListTable.reloadData()
        case 3:
            if toDoThingsText.text != "" {
                toDoList4.append(toDoThingsText.text!)
                toDoThingsText.text = ""
                checked4.append(false)
                saveData.setListFourData(toDoList4)
                saveData.setListFourChecked(checked4)
            }
            toDoListTable.reloadData()
        case 4:
            if toDoThingsText.text != "" {
                toDoList5.append(toDoThingsText.text!)
                toDoThingsText.text = ""
                checked5.append(false)
                saveData.setListFiveData(toDoList5)
                saveData.setListFiveChecked(checked5)
            }
            toDoListTable.reloadData()
        case 5:
            if toDoThingsText.text != "" {
                toDoList6.append(toDoThingsText.text!)
                toDoThingsText.text = ""
                checked6.append(false)
                saveData.setListSixData(toDoList6)
                saveData.setListSixChecked(checked6)
            }
            toDoListTable.reloadData()
        case 6:
            if toDoThingsText.text != "" {
                toDoList7.append(toDoThingsText.text!)
                toDoThingsText.text = ""
                checked7.append(false)
                saveData.setListSevenData(toDoList7)
                saveData.setListSevenChecked(checked7)
            }
            toDoListTable.reloadData()
        default: break
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listSwitch(listSegmented)
        keyboardHide()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardShow(_ notification: Notification) {
        let userInfo = notification.userInfo!
        let keyboardSize = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let intersection = keyboardSize.intersection(self.view.frame)
        self.view.frame.origin.y -= intersection.height
    }
    
    @objc func keyboardHide(_ notification: Notification) {
        self.view.frame.origin.y = 0
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch listSegmented.selectedSegmentIndex {
        case 0: return toDoList1.count
        case 1: return toDoList2.count
        case 2: return toDoList3.count
        case 3: return toDoList4.count
        case 4: return toDoList5.count
        case 5: return toDoList6.count
        case 6: return toDoList7.count
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "toDoCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ToDoCell
        switch listSegmented.selectedSegmentIndex {
        case 0:
            cell.thingsToDo?.text = toDoList1[indexPath.row]
            cell.checkedImage.image = UIImage(named: checked1[indexPath.row] ? "checked-tiffany" : "unchecked-tiffany")
        case 1:
            cell.thingsToDo?.text = toDoList2[indexPath.row]
            cell.checkedImage.image = UIImage(named: checked2[indexPath.row] ? "checked-coral" : "unchecked-coral")
        case 2:
            cell.thingsToDo?.text = toDoList3[indexPath.row]
            cell.checkedImage.image = UIImage(named: checked3[indexPath.row] ? "checked-pale" : "unchecked-pale")
        case 3:
            cell.thingsToDo?.text = toDoList4[indexPath.row]
            cell.checkedImage.image = UIImage(named: checked4[indexPath.row] ? "checked-aspen" : "unchecked-aspen")
        case 4:
            cell.thingsToDo?.text = toDoList5[indexPath.row]
            cell.checkedImage.image = UIImage(named: checked5[indexPath.row] ? "checked-greenery" : "unchecked-greenery")
        case 5:
            cell.thingsToDo?.text = toDoList6[indexPath.row]
            cell.checkedImage.image = UIImage(named: checked6[indexPath.row] ? "checked-violet" : "unchecked-violet")
        case 6:
            cell.thingsToDo?.text = toDoList7[indexPath.row]
            cell.checkedImage.image = UIImage(named: checked7[indexPath.row] ? "checked-turmeric" : "unchecked-turmeric")
        default: break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch listSegmented.selectedSegmentIndex {
        case 0:
            checked1[indexPath.row] = checked1[indexPath.row] ? false : true
            saveData.setListOneChecked(checked1)
        case 1:
            checked2[indexPath.row] = checked2[indexPath.row] ? false : true
            saveData.setListTwoChecked(checked2)
        case 2:
            checked3[indexPath.row] = checked3[indexPath.row] ? false : true
            saveData.setListThreeChecked(checked3)
        case 3:
            checked4[indexPath.row] = checked4[indexPath.row] ? false : true
            saveData.setListFourChecked(checked4)
        case 4:
            checked5[indexPath.row] = checked5[indexPath.row] ? false : true
            saveData.setListFiveChecked(checked5)
        case 5:
            checked6[indexPath.row] = checked6[indexPath.row] ? false : true
            saveData.setListSixChecked(checked6)
        case 6:
            checked7[indexPath.row] = checked7[indexPath.row] ? false : true
            saveData.setListSevenChecked(checked7)
        default: break
        }
        toDoListTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completionHandler) in
            switch self.listSegmented.selectedSegmentIndex {
            case 0:
                self.toDoList1.remove(at: indexPath.row)
                self.checked1.remove(at: indexPath.row)
                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
                saveData.setListOneData(self.toDoList1)
                saveData.setListOneChecked(self.checked1)
            case 1:
                self.toDoList2.remove(at: indexPath.row)
                self.checked2.remove(at: indexPath.row)
                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
                saveData.setListTwoData(self.toDoList2)
                saveData.setListTwoChecked(self.checked2)
            case 2:
                self.toDoList3.remove(at: indexPath.row)
                self.checked3.remove(at: indexPath.row)
                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
                saveData.setListThreeData(self.toDoList3)
                saveData.setListThreeChecked(self.checked3)
            case 3:
                self.toDoList4.remove(at: indexPath.row)
                self.checked4.remove(at: indexPath.row)
                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
                saveData.setListFourData(self.toDoList4)
                saveData.setListFourChecked(self.checked4)
            case 4:
                self.toDoList5.remove(at: indexPath.row)
                self.checked5.remove(at: indexPath.row)
                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
                saveData.setListFiveData(self.toDoList5)
                saveData.setListFiveChecked(self.checked5)
            case 5:
                self.toDoList6.remove(at: indexPath.row)
                self.checked6.remove(at: indexPath.row)
                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
                saveData.setListSixData(self.toDoList6)
                saveData.setListSixChecked(self.checked6)
            case 6:
                self.toDoList7.remove(at: indexPath.row)
                self.checked7.remove(at: indexPath.row)
                self.toDoListTable.deleteRows(at: [indexPath], with: .automatic)
                saveData.setListSevenData(self.toDoList7)
                saveData.setListSevenChecked(self.checked7)
            default: break
            }
            completionHandler(true)
        }
        
        deleteAction.backgroundColor = UIColor(red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
        deleteAction.image = UIImage(named: "delete")

        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
        
        return swipeConfiguration
    }
    
    func keyboardHide() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(keyboardDismiss))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func keyboardDismiss() {
        self.view.endEditing(true)
    }
    
    var listTitle = saveData.getListTitle()
    var toDoList1 = saveData.getListOneData()
    var checked1 = saveData.getListOneChecked()
    var toDoList2 = saveData.getListTwoData()
    var checked2 = saveData.getListTwoChecked()
    var toDoList3 = saveData.getListThreeData()
    var checked3 = saveData.getListThreeChecked()
    var toDoList4 = saveData.getListFourData()
    var checked4 = saveData.getListFourChecked()
    var toDoList5 = saveData.getListFiveData()
    var checked5 = saveData.getListFiveChecked()
    var toDoList6 = saveData.getListSixData()
    var checked6 = saveData.getListSixChecked()
    var toDoList7 = saveData.getListSevenData()
    var checked7 = saveData.getListSevenChecked()

}

