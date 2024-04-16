//
//  PopularRestaurant.swift
//  SmartFood
//
//  Created by jay kumbhani on 12/04/24.
//

import UIKit

class PopularRestaurant: UIViewController, StoryboardInstantiable {
    static var storyboardName: String = StoryboardNames.homeScreen.name
    
    
    //MARK: - Outlets
    @IBOutlet weak var clvConst: NSLayoutConstraint!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Variables
    var viewModel = PopularRestaurantModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}

//MARK: - Intial setup

extension PopularRestaurant {
    private func initialSetup() {
        collectionView.register(UINib(nibName: "HomeRestorantClvCell", bundle: nil), forCellWithReuseIdentifier: "HomeRestorantClvCell")
    }
}


//MARK: - Collectionview delegate & datasorouce
extension PopularRestaurant: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
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
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            self.clvConst.constant = collectionView.contentSize.height
        }
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
