//
//  LoginViewController.swift
//  dientitosApp
//
//  Created by Itzel GoOm on 1/10/19.
//  Copyright © 2019 DentistaApp. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInButtonTapped(_ sender: Any) {
    }
    
    
    @IBAction func registerButtonTapped(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    @objc func facebookButtonAction(sender: UIButton!) {
        print("Facebook login")
    }
    
    //MARK: Setup Button Facebook
    
    fileprivate func setupViews(){
       
        let buttonFacebook = UIButton(frame: CGRect(x: 62, y: 550, width: 300, height: 30))
        buttonFacebook.backgroundColor = UIColor(named: "facebook")
        buttonFacebook.setImage(UIImage(named: "facebookLogo")?.withRenderingMode(.alwaysOriginal), for: .normal)
        buttonFacebook.setTitle("Sign in with Facebook", for: .normal)
        buttonFacebook.addTarget(self, action: #selector(facebookButtonAction), for: .touchUpInside)
        self.view.addSubview(buttonFacebook)


}


}
