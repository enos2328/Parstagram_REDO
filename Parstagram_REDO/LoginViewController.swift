//
//  LoginViewController.swift
//  Parstagram_REDO
//
//  Created by Athena Enosara on 3/5/20.
//  Copyright © 2020 Athena Enosara. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func onSignIn(_ sender: Any) {
        let user = PFUser() //let is a constant
        user.username = usernameTextField.text
        user.password = passwordTextField.text
        
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else{
                print("/Error: \(error?.localizedDescription)")
            }
        }
    }
    @IBAction func onSignUp(_ sender: Any) {
        	
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
