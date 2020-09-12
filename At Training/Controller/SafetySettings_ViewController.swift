
//
//  SafetySettings_ViewController.swift
//  At Training
//

//

import UIKit

let db = UserDefaults.standard

var aircraftType = ""
var tailNumber = ""


class SafetySettings_ViewController: UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var aircratTypeTF: UITextField!
    
    @IBOutlet weak var tailNumTF: UITextField!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        aircratTypeTF.delegate = self
        tailNumTF.delegate = self
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""  {
                      return true
                  }
                  else{
                      return false
                  }
    }
    
   
    
    @IBAction func SaveAndContinuePressed(_ sender: UIButton) {
        if aircratTypeTF.text != "" && tailNumTF.text != "" {
            if let at = aircratTypeTF.text , let tn = tailNumTF.text {
                aircraftType = at
                tailNumber = tn
                performSegue(withIdentifier: K.safetyToMain, sender: self)
            }
        }
        else {
            aircratTypeTF.placeholder = "Please Enter Aircraft Type "
            tailNumTF.placeholder = "Please Enter Tail number "
        }
        
        
    }
    
    
    
    
    
    
    
    


}
