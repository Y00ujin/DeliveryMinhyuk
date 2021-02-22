//
//  SignUpCallViewController.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/19.
//

import UIKit

class SignUpCallViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var confirmButton: PurpleConfirmButtonDesign!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var confirmAgainButton: UIButton!
    
    var confirmButtonisSelected: Bool = true
    
    var phonenumber: String = "01047019102"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("이거 전화번호 맞니? \(isPhone(candidate: phonenumber))")
        phoneNumberTextField.delegate = self
        
        confirmButton.isEnabled = false
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func confirmAgainButton(_ sender: Any) {
        
    }
    
    @IBAction func confirmButton(_ sender: Any) {
            print("인증번호 : \(getRandomNumber(digits: 4))")
            confirmButton.isHidden = true
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // textfield 값이 전화번호 양식에 맞다면
        if(isPhone(candidate: textField.text!) == true){
            confirmButton.isEnabled = true
            confirmButton.layer.backgroundColor = CGColor(red: 195/255, green: 175/255, blue: 236/255, alpha: 1)
            

        }else {
            confirmButton.isEnabled = false
            confirmButton.layer.backgroundColor = CGColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        }
            return true

        }
    
    // 전화번호 정규식
    func isPhone(candidate: String) -> Bool {
            let regex = "^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$"
            return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: candidate)
    }
    
    // 랜덤함수
    func getRandomNumber(digits: Int) -> Int{ // 2
        var randomNumArr: [Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        
        var randomNo: UInt32 = arc4random_uniform(9) + 1
        
        var randomNum: Int = 0
        
        var mulNum: Int = 1
        
        for i in 0 ... digits-1{
            randomNumArr[i] = Int(randomNo)
            
            if i != 0 {
                for j in 0 ... i-1{
                    randomNo = arc4random_uniform(9) + 1
                    while(randomNumArr[i] == randomNumArr[j]){
                        randomNumArr[i] = Int(randomNo)
                    }
                }
            }
        }
        
        
        for i in 0 ... digits-1 {
            randomNum += mulNum * randomNumArr[i]
            mulNum = mulNum * 10
        }
        
        return randomNum
    }
}




