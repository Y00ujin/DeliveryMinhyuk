//
//  CornerRadiusButtonDesign.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/19.
//

import UIKit

class CornerRadiusButtonDesign: UIButton {
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 10.0;
        self.layer.masksToBounds = false
    }
}
