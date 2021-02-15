//
//  LineViewDesign.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/15.
//

import UIKit

class LineViewDesign: UIView {
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 10.0;
        self.layer.masksToBounds = false
        self.layer.backgroundColor = CGColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        self.layer.borderColor = CGColor(red: 113/255, green: 113/255, blue: 113/255, alpha: 1)
        self.layer.borderWidth = 1.0
    }
}

