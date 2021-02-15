//
//  PurpleConfirmButtonDesign.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/15.
//

import UIKit

class PurpleConfirmButtonDesign: UIButton {
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 7.0;
        self.layer.masksToBounds = false
        self.layer.backgroundColor = CGColor(red: 195/255, green: 175/255, blue: 236/255, alpha: 1)
    }
}
