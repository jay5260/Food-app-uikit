//
//  SignUpVC.swift
//  SmartFood
//
//  Created by jay kumbhani on 12/05/23.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var viewUserName: UIView!
    @IBOutlet weak var viewEmail: UIView!
    @IBOutlet weak var viewPassword: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        intialSetup()
        // Do any additional setup after loading the view.
    }
    
        //MARK: - intial setup
    private func intialSetup() {
        viewUserName.layer.cornerRadius = 15
        viewUserName.layer.masksToBounds = true
        viewUserName.layer.borderColor = hexStringToUIColor(hex: "F4F4F4").cgColor
        viewUserName.layer.borderWidth = 1
        
        viewEmail.layer.cornerRadius = 15
        viewEmail.layer.masksToBounds = true
        viewEmail.layer.borderColor = hexStringToUIColor(hex: "F4F4F4").cgColor
        viewEmail.layer.borderWidth = 1
        
        viewPassword.layer.cornerRadius = 15
        viewPassword.layer.masksToBounds = true
        viewPassword.layer.borderColor = hexStringToUIColor(hex: "F4F4F4").cgColor
        viewPassword.layer.borderWidth = 1
    }
    
    @IBAction func createAccountBtnTapped(_ sender: Any) {
        let vc = HomeVC.instantiate()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func alreadyHaveAnAccounBtnTapped(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let hostProfileVC = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.pushViewController(hostProfileVC, animated: true)
    }
}
