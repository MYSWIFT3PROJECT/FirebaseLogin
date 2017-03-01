//
//  ViewController.swift
//  FirebaseLogin
//
//  Created by Nem Sothea on 3/1/17.
//  Copyright © 2017 Nem Sothea. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController,FBSDKLoginButtonDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)
        loginButton.frame = CGRect(x: 16, y: 280, width: view.frame.width - 32, height: 50)
        loginButton.delegate = self
    }
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Do you really wanna logout?")
    }
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil{
            print(error)
            return
        }
        print("Successfully loged in with facebook account..:)")
    }


}

