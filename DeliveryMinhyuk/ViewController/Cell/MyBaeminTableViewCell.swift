//
//  MyBaeminTableViewCell.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/21.
//

import UIKit

class MyBaeminTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
