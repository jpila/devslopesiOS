//
//  ViewController.swift
//  SocialNetwork
//
//  Created by JOSE PILAPIL on 2017-03-04.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookBtnTapped(_ sender: Any) {
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (
            result, error) in
            if error != nil {
                print("unable to Authenticate with Facebook - \(error)")
            } else if result?.isCancelled == true {
                print("User cancelled Facebook authetntication")
            } else {
                print("Sucessfully authenticated with Facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
        
        
    }

    
    func firebaseAuth(_ credential: FIRAuthCredential){
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("unable to authenticate with firebase \(error)")
            }else {
                print("Sucessfully authenticated with Firebase")
            }
        })
    }
}

