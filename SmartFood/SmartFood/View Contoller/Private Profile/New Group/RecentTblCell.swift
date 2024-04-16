//
//  RecentTblCell.swift
//  SmartFood
//
//  Created by jay kumbhani on 15/04/24.
//

import UIKit

class RecentTblCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var itemNameLbl: UILabel!
    @IBOutlet weak var itmeHotelNameLbl: UILabel!
    @IBOutlet weak var itemRateLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func config(data: MenuModel) {
        img.image = UIImage(named: data.itemImg ?? "")
        itemNameLbl.text = data.itemName
        itemRateLbl.text = data.itemPrice
        itmeHotelNameLbl.text = data.itemHotelName
    }
    
}
