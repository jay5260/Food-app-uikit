//
//  HomeRestorantClvCell.swift
//  SmartFood
//
//  Created by jay kumbhani on 07/04/24.
//

import UIKit

class HomeRestorantClvCell: UICollectionViewCell {

    @IBOutlet weak var restorantImg: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func config(image: String) {
        restorantImg.image = UIImage(named: image)
    }
}
