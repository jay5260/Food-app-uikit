//
//  OnbordingSecondVC.swift
//  SmartFood
//
//  Created by jay kumbhani on 12/05/23.
//

import UIKit

class OnbordingSecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextBtnTapped(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let Nav = storyBoard.instantiateViewController(withIdentifier: "SignUpVC") as! SignUpVC
        self.navigationController?.pushViewController(Nav, animated: true)
    }

}
