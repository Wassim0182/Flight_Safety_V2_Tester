//
//  Setup_ViewController.swift
//  At Training
//

//

import UIKit

class Setup_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dayPressed(_ sender: UIButton) {
          print("Change to Day Mode ")
        
    }
    
    @IBAction func nightPressed(_ sender: UIButton) {
        
        print("change to Dark Mode")
    }
    
    @IBAction func safetySetting_dataSent(_ sender: UIButton) {
        
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
