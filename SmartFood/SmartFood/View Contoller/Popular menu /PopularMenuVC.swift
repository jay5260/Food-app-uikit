//
//  PopularMenuVC.swift
//  SmartFood
//
//  Created by jay kumbhani on 13/04/24.
//

import UIKit

class PopularMenuVC: UIViewController, StoryboardInstantiable {
    static var storyboardName: String = StoryboardNames.homeScreen.name
    
    //MARK: - Outlets
    @IBOutlet weak var tblConst: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Variables
    var viewModel = PopularMenuViewModel()
    
    //MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        // Do any additional setup after loading the view.
    }
    @IBAction func onBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}


//MARK: - Intial setup
extension PopularMenuVC {
    private func initialSetup() {
        tableView.register(UINib(nibName: "MenuTblCell", bundle: nil), forCellReuseIdentifier: "MenuTblCell")
    }
}



//MARK: - Tableview delegate & datasource
extension PopularMenuVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.menuArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTblCell", for: indexPath) as! MenuTblCell
        cell.layer.cornerRadius = 8 // Adjust the corner radius as needed
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 0.1
        cell.layer.shadowOffset = CGSize(width: 0, height: 6)
        cell.layer.shadowRadius = 5
        cell.config(data: viewModel.menuArr[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            self.tblConst.constant = tableView.contentSize.height
        }
    }
}
