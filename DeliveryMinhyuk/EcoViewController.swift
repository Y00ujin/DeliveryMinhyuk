//
//  EcoViewController.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/23.
//

import UIKit

class EcoViewController: UIViewController{
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var ecoCount1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backView.layer.cornerRadius = 30
        incrementLabel(to: 13, time: 1.5, label: ecoCount1)
    }
    
    func incrementLabel(to endValue: Int, time: Double, label: UILabel) {
        let duration: Double = time //seconds
        DispatchQueue.global().async {
            for i in 0 ..< (endValue + 1) {
                let sleepTime = UInt32(duration/Double(endValue) * 1000000.0)
                usleep(sleepTime)
                DispatchQueue.main.async {
                    label.text = "\(i)"
                }
            }
        }
    }
    
    

}

