//
//  HomeCollectionViewCell.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/17.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override var isSelected: Bool {
      didSet {
        if isSelected {
            label.textColor = UIColor(red: 176/255, green: 148/255, blue: 235/255, alpha: 1.0)
        } else {
            label.textColor = .black
        }
      }
    }
}
