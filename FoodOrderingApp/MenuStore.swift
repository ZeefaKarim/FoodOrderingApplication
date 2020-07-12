//
//  MenuStore.swift
//  FoodOrderingApp
//
//  Created by user174109 on 7/6/20.
//  Copyright © 2020 user174109. All rights reserved.
//

import UIKit

class MenuStore{
    var menuItems=[MenuItem]()
    
    @discardableResult func createItem(count:Int)->MenuItem {
        print("In create item")
        let newItem = MenuItem(count:count)
        menuItems.append(newItem)
        print(newItem.foodName)
        print(newItem.foodPrice)
        return newItem
    }
    
    init() {
        print("In init")
        var count:Int=0
        for _ in 0..<5 {
            createItem(count:count)
            count=count+1;
        }
    }
}
