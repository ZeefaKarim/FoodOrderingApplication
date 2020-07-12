//
//  RegisterViewController.swift
//  FoodOrderingApp
//
//  Created by user174109 on 6/11/20.
//  Copyright © 2020 user174109. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    

    @IBOutlet weak var emailId: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var notificationSwitch: UISwitch!
    
    var name=""
    
    override func viewDidLoad() {
          super.viewDidLoad()
        username.delegate=self
        password.delegate=self
        confirmPassword.delegate=self
        emailId.delegate=self
        
    }
    
    /* Function which is called whenever the register button is clicked***/
    
       
    @IBAction func clickRegister(_ sender: Any) {
        
        /*Validating all the fields. First validation is to check if all the fields are filled**/
        if(username.text=="" || password.text=="" || confirmPassword.text=="" || emailId.text==""){
            userAlert(dispayMessage: "One or more fields are empty",displayTitle:"Incorrect Entry")
        }
        /* validation for emil id to check if it is in correct format*/
        else if(!ValidateEmailId(emailIdText:emailId.text ?? "")){
                userAlert(dispayMessage: "Incorrect EmailID",displayTitle:"Incorrect Email Fomat")
        }
            
        /*Validation for password*/
        else if(!ValidatePassword(passwordText: password.text ?? "")){
                userAlert(dispayMessage: "Password should be atleast 7 characters",displayTitle:"Incorrect Password Format")
        }
        /*Validation to check if confirm password and password are same*/
        else if(!ValidateConfirmPassword(confirmPasswordText: confirmPassword.text ?? "",passwordText: password.text ?? "")){
                userAlert(dispayMessage: "Password Mismatch",displayTitle:"Password Mismatch")
        }
        /*Validation for username to check if it contains required number of charaters*/
        else if(!ValidateUserName(userName: username.text ?? "")){
            userAlert(dispayMessage: "Enter at least more than 2 characters",displayTitle:"Incorrect Username")
        }
        /*Finally When registration is successful*/
        else{
            userAlert(dispayMessage: "You are now registered",displayTitle:"Registation Successful")
            username.text=""
            password.text=""
            confirmPassword.text=""
            emailId.text=""
        }
    }
    /*Function which is called whenever there is an alert*/
    func userAlert(dispayMessage:String, displayTitle:String){
        let alert = UIAlertController(title: displayTitle, message: dispayMessage, preferredStyle: UIAlertController.Style.alert)

        /**add an action (button)**/
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        /**show the alert**/
        self.present(alert, animated: true, completion: nil)
    }
    
    /*Validate Username for atleast 2 characters***/
    func ValidateUserName(userName:String)-> Bool{
        if(userName.count<2){
           return false
        }
        return true
    }
    
    /*Validate password for atleast 7 characters***/
    func ValidatePassword(passwordText :String)-> Bool{
        if(passwordText.count<7){
            return false
        }
        return true
    }
    
    /*Validate emailId for correct format***/
    func ValidateEmailId(emailIdText:String)-> Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailIdText)
    }
    
    /*To validate if password and confirm password fields are same*/
    func ValidateConfirmPassword(confirmPasswordText:String, passwordText:String)->Bool{
        if(!(confirmPasswordText==passwordText)){
            return false
        }
        return true
    }
}
/* For keyboard return*/
extension RegisterViewController : UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

