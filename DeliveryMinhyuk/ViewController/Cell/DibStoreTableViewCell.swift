//
//  DibStoreTableViewCell.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/21.
//

import UIKit

class DibStoreTableViewCell: UITableViewCell {

    @IBOutlet weak var dibStoreImage: UIImageView!
    @IBOutlet weak var dibStoreName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dibStoreImage.layer.cornerRadius = 28
        dibStoreImage.layer.borderWidth = 0.5
        dibStoreImage.layer.borderColor = UIColor.lightGray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
