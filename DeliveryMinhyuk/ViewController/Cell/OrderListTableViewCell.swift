//
//  OrderListTableViewCell.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/21.
//

import UIKit

class OrderListTableViewCell: UITableViewCell {

    @IBOutlet weak var chickenImage: UIImageView!
    @IBOutlet weak var orderDate: UILabel!
    @IBOutlet weak var orderShopName: UILabel!
    @IBOutlet weak var orderMemuName: UILabel!
    @IBOutlet weak var orderMenuCount: UILabel!
    @IBOutlet weak var orderMenuPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
