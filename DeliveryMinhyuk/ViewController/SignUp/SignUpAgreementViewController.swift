//
//  SignUpAgreementViewController.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/19.
//

import UIKit

class SignUpAgreementViewController: UIViewController{
    @IBOutlet weak var totalAgreementButton: AgreementButtonDesign!
    @IBOutlet weak var deliveryMinhyukButton: AgreementButtonDesign!
    @IBOutlet weak var electronicPayButton: AgreementButtonDesign!
    @IBOutlet weak var personalButton: AgreementButtonDesign!
    @IBOutlet weak var personal3Button: AgreementButtonDesign!
    @IBOutlet weak var mailButton: AgreementButtonDesign!
    @IBOutlet weak var up14Button: UIButton!
    @IBOutlet weak var down14Button: UIButton!
    @IBOutlet weak var nextButton: PurpleButtonDesign!
    
    var Selected_Button: UIImage = UIImage(named: "Selected_Button")!
    
    var UnSelected_Button: UIImage = UIImage(named: "UnSelected_Button")!
    
    var isChecked: [Bool] = [false,false,false,false,false,false,false,false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        up14Button.isHighlighted = false
        down14Button.isHighlighted = false
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func totalAgreementButton(_ sender: Any) {
        isChecked[0] = !isChecked[0]
        if isChecked[0] {
            isChecked[1] = true
            isChecked[2] = true
            isChecked[3] = true
            isChecked[4] = true
            isChecked[5] = true
            
            changePurPleButton(Button: totalAgreementButton)
            changePurPleButton(Button: deliveryMinhyukButton)
            changePurPleButton(Button: electronicPayButton)
            changePurPleButton(Button: personalButton)
            changePurPleButton(Button: personal3Button)
            changePurPleButton(Button: mailButton)
            nextButton.backgroundColor = UIColor(red: 195/255, green: 175/255, blue: 236/255, alpha: 1)
        } else {
            isChecked[1] = false
            isChecked[2] = false
            isChecked[3] = false
            isChecked[4] = false
            isChecked[5] = false
            changeGrayButton(Button: totalAgreementButton)
            changeGrayButton(Button: deliveryMinhyukButton)
            changeGrayButton(Button: electronicPayButton)
            changeGrayButton(Button: personalButton)
            changeGrayButton(Button: personal3Button)
            changeGrayButton(Button: mailButton)
            nextButton.backgroundColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1)
        }
    }
    
    @IBAction func deliveryMinhyukButton(_ sender: Any) {
        isChecked[1] = !isChecked[1]
        if isChecked[1] {
            print("배민이용약관 선택")
            changePurPleButton(Button: deliveryMinhyukButton)
            if(isChecked[2] == true && isChecked[3] == true && isChecked[4] == true && isChecked[5] == true){
                isChecked[0] = true
                changePurPleButton(Button: totalAgreementButton)
            }
            if(isChecked[2] == true && isChecked[3] == true){
                nextButton.backgroundColor = UIColor(red: 195/255, green: 175/255, blue: 236/255, alpha: 1)
            }
        } else {
            print("배민이용약관 선택 취소")
            changeGrayButton(Button: deliveryMinhyukButton)
            if(isChecked[2] == true && isChecked[3] == true && isChecked[4] == true && isChecked[5] == true){
                isChecked[0] = false
                changeGrayButton(Button: totalAgreementButton)
            }
            if(isChecked[2] == true && isChecked[3] == true){
                nextButton.backgroundColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1)
            }

        }
        
    }
    
    @IBAction func electronicPayButton(_ sender: Any) {
        isChecked[2] = !isChecked[2]
        if isChecked[2] {
            changePurPleButton(Button: electronicPayButton)
            if(isChecked[1] == true && isChecked[3] == true && isChecked[4] == true && isChecked[5] == true){
                isChecked[0] = true
                changePurPleButton(Button: totalAgreementButton)
            }
            if(isChecked[1] == true && isChecked[3] == true){
                nextButton.backgroundColor = UIColor(red: 195/255, green: 175/255, blue: 236/255, alpha: 1)
            }
        } else {
            changeGrayButton(Button: electronicPayButton)
            if(isChecked[1] == true && isChecked[3] == true && isChecked[4] == true && isChecked[5] == true){
                isChecked[0] = false
                changeGrayButton(Button: totalAgreementButton)
            }
            if(isChecked[1] == true && isChecked[3] == true){
                nextButton.backgroundColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1)
            }
        }
    }
    
    @IBAction func personalButton(_ sender: Any) {
        isChecked[3] = !isChecked[3]
        if isChecked[3] {
            changePurPleButton(Button: personalButton)
            if(isChecked[2] == true && isChecked[1] == true && isChecked[4] == true && isChecked[5] == true){
                isChecked[0] = true
                changePurPleButton(Button: totalAgreementButton)
            }
            if(isChecked[1] == true && isChecked[2] == true){
                nextButton.backgroundColor = UIColor(red: 195/255, green: 175/255, blue: 236/255, alpha: 1)
            }
        } else {
            changeGrayButton(Button: personalButton)
            if(isChecked[2] == true && isChecked[1] == true && isChecked[4] == true && isChecked[5] == true){
                isChecked[0] = false
                changeGrayButton(Button: totalAgreementButton)
            }
            if(isChecked[2] == true && isChecked[1] == true){
                nextButton.backgroundColor = UIColor(red: 228/255, green: 228/255, blue: 228/255, alpha: 1)
            }
        }
    }
    
    @IBAction func personal3Button(_ sender: Any) {
        isChecked[4] = !isChecked[4]
        if isChecked[4] {
            changePurPleButton(Button: personal3Button)
            if(isChecked[2] == true && isChecked[1] == true && isChecked[3] == true && isChecked[5] == true){
                isChecked[0] = true
                changePurPleButton(Button: totalAgreementButton)
            }
        } else {
            changeGrayButton(Button: personal3Button)
            if(isChecked[2] == true && isChecked[1] == true && isChecked[3] == true && isChecked[5] == true){
                isChecked[0] = false
                changeGrayButton(Button: totalAgreementButton)
            }
        }
    }
    
    @IBAction func mailButton(_ sender: Any) {
        isChecked[5] = !isChecked[5]
        if isChecked[5] {
            changePurPleButton(Button: mailButton)
            if(isChecked[2] == true && isChecked[1] == true && isChecked[4] == true && isChecked[3] == true){
                isChecked[0] = true
                changePurPleButton(Button: totalAgreementButton)
            }
        } else {
            changeGrayButton(Button: mailButton)
            if(isChecked[2] == true && isChecked[1] == true && isChecked[4] == true && isChecked[3] == true){
                isChecked[0] = false
                changeGrayButton(Button: totalAgreementButton)
            }
        }
    }
    
    @IBAction func up14Button(_ sender: Any) {
            up14Button.setImage(Selected_Button, for: UIControl.State.normal)
            down14Button.setImage(UnSelected_Button, for: UIControl.State.normal)
    }
    
    @IBAction func down14Button(_ sender: Any) {
            up14Button.setImage(UnSelected_Button, for: UIControl.State.normal)
            down14Button.setImage(Selected_Button, for: UIControl.State.normal)
    }
    
    @IBAction func nextButton(_ sender: Any) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpCallViewController")
        
        // 로그인 성공 ? -> tabBarViewController로 화면 push
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    func changePurPleButton(Button: UIButton){
        Button.backgroundColor = UIColor(red: 195/255, green: 175/255, blue: 236/255, alpha: 1)
    }
    
    func changeGrayButton(Button: UIButton){
        Button.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
    }
}


