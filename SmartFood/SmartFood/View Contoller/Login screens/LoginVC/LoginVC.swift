//
//  LoginVC.swift
//  SmartFood
//
//  Created by jay kumbhani on 12/05/23.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var viewEmail: UIView!
    @IBOutlet weak var viewPassword: UIView!
    @IBOutlet weak var btnFacebook: UIButton!
    @IBOutlet weak var viewgoogle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        intialSetup()
        // Do any additional setup after loading the view.
    }
    

    //MARK: - intial setup
private func intialSetup() {
    btnFacebook.layer.cornerRadius = 15
    btnFacebook.layer.masksToBounds = true
    btnFacebook.layer.borderColor = hexStringToUIColor(hex: "F4F4F4").cgColor
    btnFacebook.layer.borderWidth = 1
    
    viewgoogle.layer.cornerRadius = 15
    viewgoogle.layer.masksToBounds = true
    viewgoogle.layer.borderColor = hexStringToUIColor(hex: "F4F4F4").cgColor
    viewgoogle.layer.borderWidth = 1
    
    viewEmail.layer.cornerRadius = 15
    viewEmail.layer.masksToBounds = true
    viewEmail.layer.borderColor = hexStringToUIColor(hex: "F4F4F4").cgColor
    viewEmail.layer.borderWidth = 1
    
    viewPassword.layer.cornerRadius = 15
    viewPassword.layer.masksToBounds = true
    viewPassword.layer.borderColor = hexStringToUIColor(hex: "F4F4F4").cgColor
    viewPassword.layer.borderWidth = 1
}

}
