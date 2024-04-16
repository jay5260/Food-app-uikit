//
//  OnboardingScreen.swift
//  SmartFood
//
//  Created by jay kumbhani on 12/05/23.
//

import UIKit

class OnboardingScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let Nav = storyBoard.instantiateViewController(withIdentifier: "OnbordingSecondVC") as! OnbordingSecondVC
        self.navigationController?.pushViewController(Nav, animated: true)
    }
}
