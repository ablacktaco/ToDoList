//
//  SaveData.swift
//  TODOLIST
//
//  Created by 陳姿穎 on 2019/8/11.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

class SavedData {
    
    static let shared = SavedData()
    
    let listsColor: [UIColor] = [.tiffany, .coral, .pale, .aspen, .greenery, .violet, .turmeric]
    
    var lists: [PageModel] {
        didSet {
            UserDefaults.standard.set(try? PropertyListEncoder().encode(lists), forKey: "lists")
        }
    }
    
    private static func getLists() -> [PageModel] {
        if let listsData = UserDefaults.standard.object(forKey: "lists") as? Data {
            if let data = try? PropertyListDecoder().decode([PageModel].self, from: listsData) {
                return data
            }
        }
        return Array(repeating: PageModel(), count: 7)
    }
    
    private init() {
        lists = SavedData.getLists()
    }
    
}
