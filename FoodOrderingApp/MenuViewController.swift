//
//  MenuViewController.swift
//  FoodOrderingApp
//
//  Created by user174109 on 7/5/20.
//  Copyright © 2020 user174109. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    var menuStore:MenuStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("In view overload")
        let menuStore = MenuStore()
        self.menuStore = menuStore
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int {
//        print(menuStore.menuItems.count)
        return menuStore.menuItems.count
       }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)->UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath) as! TableViewController
        let eachItem=menuStore.menuItems[indexPath.row]
        cell.menuName.text=eachItem.foodName
        cell.menuPrice.text="$\(String(eachItem.foodPrice))"
        //cell.textLabel?.text=eachItem.foodName
        //cell.detailTextLabel?.text="$\(String(eachItem.foodPrice))"
           return (cell)
       }
       

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
	
