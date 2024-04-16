//
//  TestimonialTblCell.swift
//  SmartFood
//
//  Created by jay kumbhani on 15/04/24.
//

import UIKit

class TestimonialTblCell: UITableViewCell {

    @IBOutlet weak var reviewImg: UIImageView!
    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var userImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(data: TestimonialModel) {
        reviewImg.image = UIImage(named: "\(data.rating)")
        messageLbl.text = data.message
        dateLbl.text = data.formattedDate
        userNameLbl.text = data.userName
        userImg.image = UIImage(named: data.userImage)
    }
    
}
