//
//  SaveData.swift
//  TODOLIST
//
//  Created by 陳姿穎 on 2019/8/11.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import Foundation

class saveData {
    
    //儲存表格標題
    static func setListTitle(_ data: [String]) {
        UserDefaults.standard.set(data, forKey: "listTitle")
    }
    
    //取得表格標題
    static func getListTitle() -> [String] {
        if let title = UserDefaults.standard.value(forKey: "listTitle") as? [String] {
            return title
        }
        return Array(repeating: "title", count: 7)
    }
    
    //儲存表格資料
    static func setListOneData(_ data: [String]) {
        UserDefaults.standard.set(data, forKey: "listOne")
    }
    static func setListTwoData(_ data: [String]) {
        UserDefaults.standard.set(data, forKey: "listTwo")
    }
    static func setListThreeData(_ data: [String]) {
        UserDefaults.standard.set(data, forKey: "listThree")
    }
    static func setListFourData(_ data: [String]) {
        UserDefaults.standard.set(data, forKey: "listFour")
    }
    static func setListFiveData(_ data: [String]) {
        UserDefaults.standard.set(data, forKey: "listFive")
    }
    static func setListSixData(_ data: [String]) {
        UserDefaults.standard.set(data, forKey: "listSix")
    }
    static func setListSevenData(_ data: [String]) {
        UserDefaults.standard.set(data, forKey: "listSeven")
    }
    
    //取得表格資料
    static func getListOneData() -> [String] {
        if let data = UserDefaults.standard.value(forKey: "listOne") as? [String] {
            return data
        }
        return [String]()
    }
    static func getListTwoData() -> [String] {
        if let data = UserDefaults.standard.value(forKey: "listTwo") as? [String] {
            return data
        }
        return [String]()
    }
    static func getListThreeData() -> [String] {
        if let data = UserDefaults.standard.value(forKey: "listThree") as? [String] {
            return data
        }
        return [String]()
    }
    static func getListFourData() -> [String] {
        if let data = UserDefaults.standard.value(forKey: "listFour") as? [String] {
            return data
        }
        return [String]()
    }
    static func getListFiveData() -> [String] {
        if let data = UserDefaults.standard.value(forKey: "listFive") as? [String] {
            return data
        }
        return [String]()
    }
    static func getListSixData() -> [String] {
        if let data = UserDefaults.standard.value(forKey: "listSix") as? [String] {
            return data
        }
        return [String]()
    }
    static func getListSevenData() -> [String] {
        if let data = UserDefaults.standard.value(forKey: "listSeven") as? [String] {
            return data
        }
        return [String]()
    }
    
    //儲存checked資料
    static func setListOneChecked(_ checked: [Bool]) {
        UserDefaults.standard.set(checked, forKey: "listOneChecked")
    }
    static func setListTwoChecked(_ checked: [Bool]) {
        UserDefaults.standard.set(checked, forKey: "listTwoChecked")
    }
    static func setListThreeChecked(_ checked: [Bool]) {
        UserDefaults.standard.set(checked, forKey: "listThreeChecked")
    }
    static func setListFourChecked(_ checked: [Bool]) {
        UserDefaults.standard.set(checked, forKey: "listFourChecked")
    }
    static func setListFiveChecked(_ checked: [Bool]) {
        UserDefaults.standard.set(checked, forKey: "listFiveChecked")
    }
    static func setListSixChecked(_ checked: [Bool]) {
        UserDefaults.standard.set(checked, forKey: "listSixChecked")
    }
    static func setListSevenChecked(_ checked: [Bool]) {
        UserDefaults.standard.set(checked, forKey: "listSevenChecked")
    }
    
    //取得checked資料
    static func getListOneChecked() -> [Bool] {
        if let checked = UserDefaults.standard.value(forKey: "listOneChecked") as? [Bool] {
            return checked
        }
        return [Bool]()
    }
    static func getListTwoChecked() -> [Bool] {
        if let checked = UserDefaults.standard.value(forKey: "listTwoChecked") as? [Bool] {
            return checked
        }
        return [Bool]()
    }
    static func getListThreeChecked() -> [Bool] {
        if let checked = UserDefaults.standard.value(forKey: "listThreeChecked") as? [Bool] {
            return checked
        }
        return [Bool]()
    }
    static func getListFourChecked() -> [Bool] {
        if let checked = UserDefaults.standard.value(forKey: "listFourChecked") as? [Bool] {
            return checked
        }
        return [Bool]()
    }
    static func getListFiveChecked() -> [Bool] {
        if let checked = UserDefaults.standard.value(forKey: "listFiveChecked") as? [Bool] {
            return checked
        }
        return [Bool]()
    }
    static func getListSixChecked() -> [Bool] {
        if let checked = UserDefaults.standard.value(forKey: "listSixChecked") as? [Bool] {
            return checked
        }
        return [Bool]()
    }
    static func getListSevenChecked() -> [Bool] {
        if let checked = UserDefaults.standard.value(forKey: "listSevenChecked") as? [Bool] {
            return checked
        }
        return [Bool]()
    }
    

    
}
