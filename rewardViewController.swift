 //
//  rewardViewController.swift
//  MyFoodDeliveryApp
//
//  Created by Hardik Gopani on 2020-06-06.
//  Copyright © 2020 user174109. All rights reserved.
//

import UIKit

class rewardViewController: UIViewController {

    @IBOutlet weak var leftFoodBox: UIImageView!
    @IBOutlet weak var rightFoodBox: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Try Your Luck"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func rollButtonPressed(_ sender: Any) {
        let foodArray = [#imageLiteral(resourceName: "Untitled design (10)"),#imageLiteral(resourceName: "Untitled design (15)"),#imageLiteral(resourceName: "Untitled design (3)"),#imageLiteral(resourceName: "Untitled design (1)"),#imageLiteral(resourceName: "Untitled design (5)"),#imageLiteral(resourceName: "Untitled design (13)"),#imageLiteral(resourceName: "Untitled design (7)"),#imageLiteral(resourceName: "Untitled design (12)"),#imageLiteral(resourceName: "Untitled design (2)"),#imageLiteral(resourceName: "Untitled design (8)"),#imageLiteral(resourceName: "Untitled design (11)"),#imageLiteral(resourceName: "Untitled design (4)"),#imageLiteral(resourceName: "Untitled design (16)")]
        
        leftFoodBox.image = foodArray.randomElement()
        rightFoodBox.image = foodArray [Int.random(in:0...12)]
               
        
    }
    

}
