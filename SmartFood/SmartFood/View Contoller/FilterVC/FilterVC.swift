//
//  FilterVC.swift
//  SmartFood
//
//  Created by jay kumbhani on 13/04/24.
//

import UIKit

class FilterVC: UIViewController, StoryboardInstantiable {
    static var storyboardName: String = StoryboardNames.homeScreen.name

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onBackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
