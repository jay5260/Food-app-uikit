//
//  HomeVC.swift
//  SmartFood
//
//  Created by jay kumbhani on 07/04/24.
//

import UIKit

class HomeVC: UIViewController, StoryboardInstantiable {
    static var storyboardName: String = StoryboardNames.homeScreen.name
    
    //MARK: - Outlets
    @IBOutlet weak var tblConst: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!

    //MARK: - Variables
    var viewModel = HomeViewModel()
    
    //MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    //MARK: - Actions
    @IBAction func onViewMoreRestuarant(_ sender: Any) {
        let vc = PopularRestaurant.instantiate()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onFilterBtn(_ sender: Any) {
        let vc = FilterVC.instantiate()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onPopulorMenuBtn(_ sender: Any) {
        let vc = PopularMenuVC.instantiate()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

//MARK: - Intial setup
extension HomeVC {
    private func initialSetup() {
        collectionView.register(UINib(nibName: "HomeRestorantClvCell", bundle: nil), forCellWithReuseIdentifier: "HomeRestorantClvCell")
        tableView.register(UINib(nibName: "MenuTblCell", bundle: nil), forCellReuseIdentifier: "MenuTblCell")
    }
}

//MARK: - Collectionview delegate & datasorouce
extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeRestorantClvCell", for: indexPath) as! HomeRestorantClvCell
        cell.layer.cornerRadius = 8 // Adjust the corner radius as needed
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 0.1
        cell.layer.shadowOffset = CGSize(width: 0, height: 6)
        cell.layer.shadowRadius = 5
        cell.config(image: viewModel.imgArr[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
            let vc = RestaurantMainPageVC.instantiate()
            self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace: CGFloat = 16 * 3 // set 3 if you want 2 cell 😅
        let availableWidth = collectionView.bounds.width - paddingSpace
        let widthPerItem = availableWidth / 2
        return CGSize(width: widthPerItem, height: 210) // Adjust the height as needed
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16) // Adjust as per your requirement
    }
}


//MARK: - Tableview delegate & datasource
extension HomeVC: UITableViewDelegate, UITableViewDataSource {
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
