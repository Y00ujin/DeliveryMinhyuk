//
//  ViewController.swift
//  DeliveryMinhyuk
//
//  Created by 김유진 on 2021/02/15.
//

import UIKit
import KakaoSDKAuth
import GoogleSignIn
import AuthenticationServices
import Firebase

class LoginViewController: UIViewController, GIDSignInDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwardTextField: UITextField!
    @IBOutlet weak var findPasswardButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var kakaoLogin: LineButtonDesign!
    @IBOutlet weak var googleLogin: LineButtonDesign!
    @IBOutlet weak var appleLogin: LineButtonDesign!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func googleLogin(_ sender: Any) {
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance()?.signIn()
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if error == nil{
            print(user.userID!)
        }
    }
    
    @IBAction func LoginButton(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwardTextField.text!) { (user, error) in

                    if user != nil{
                        
                        print("login success")
                        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "tabBarViewController")
                        
                        // 로그인 성공 ? -> tabBarViewController로 화면 push
                        self.navigationController?.pushViewController(pushVC!, animated: true)
                    }

                    else{

                        print("login fail")

                    }

              }
    }
    
    @IBAction func kakaoLogin(_ sender: Any) {
        AuthApi.shared.loginWithKakaoAccount {(oauthToken, error) in
           if let error = error {
             print(error)
           }
           else {
            print("loginWithKakaoAccount() success.")
            
            // 화면전환 코드
            _ = oauthToken
           }
        }
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpAgreementViewController")
        
        // 로그인 성공 ? -> tabBarViewController로 화면 push
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
}

