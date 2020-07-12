//
//  MenuItem.swift
//  FoodOrderingApp
//
//  Created by user174109 on 7/6/20.
//  Copyright © 2020 user174109. All rights reserved.
//

import UIKit

class MenuItem:NSObject{
    var foodName:String
    var foodPrice:Double
    
    init(foodName: String, foodPrice: Double) {
        self.foodName=foodName
        self.foodPrice=foodPrice
        super.init()
    }
    
    convenience init(count:Int) {
        let foodArray=["Vegetarian Burger", "Chicken Mini","Fries","Flurry","Hash Brown","Chicken Maharaja"];
        let priceArray=[5.6,8.5,3.1,2.5,1.0,8.6]
        self.init(foodName:foodArray[count],foodPrice:priceArray[count])
    }
    
}
