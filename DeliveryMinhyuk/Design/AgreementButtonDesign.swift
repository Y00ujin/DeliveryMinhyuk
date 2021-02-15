//
//  GrayButtonDesign.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/15.
//

import UIKit

class AgreementButtonDesign: UIButton {
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 3.0;
        self.layer.masksToBounds = false
    }
}
