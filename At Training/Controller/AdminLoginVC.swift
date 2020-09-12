//
//  AdminLoginVC.swift
//  At Training
//

//

import UIKit

class AdminLoginVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var passwordTF: UITextField!
    var password = "123qwe" //password for getting into Admin Mode
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTF.delegate = self

        // Do any additional setup after loading the view.
    }
    
   // TF delegate
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
           if passwordTF.text != ""  {
               return true
           }
           else{
               return false
           }
       }
       func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           passwordTF.endEditing(true)
           return true
       }
       
    
       
       
       
       
    @IBAction func ContinuePressed(_ sender: UIButton) {
     
        
        if let pw = passwordTF.text {
            if pw == password {
                performSegue(withIdentifier: K.adminToCalibration, sender: self)
                userID = "1"
            }
            else {
                wrongPassword()
            }
            
        }
        
       
        
    }
    
    func wrongPassword()  {
        passwordTF.placeholder = "You entered a wrong password. Please try again! "
        passwordTF.text = ""
    }
    
    

    

   

}
