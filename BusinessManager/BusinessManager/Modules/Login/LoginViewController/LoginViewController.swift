//
//  LoginViewController.swift
//  BusinessManager
//
//  Created by Rahul Soni on 6/11/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController, LoginPresenterDelegate {
    
    
    @IBOutlet weak var txtFUname: UITextField!
    @IBOutlet weak var txtFPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func btnActionLogin(_ sender: UIButton) {
        

        //self.NW21();
        
        let objPresenter: LoginPresenter = LoginPresenter()
        objPresenter.delgLoginPresenter = self
        objPresenter.loginBtnPressed(strUsername: txtFUname.text!, strPassword: txtFPassword.text!)
    }
    
    @IBAction func btnActionForgetPass(_ sender: UIButton) {
    }
    
    @IBAction func btnActionMoveToSignup(_ sender: UIButton) {
    }
    
    func responseToLoginController(isError: Bool, strErrorDetails: String)
    {
        
    }
    
    func showError(strError: String)
    {
        self.showAlertWith(strTitle: "Invalid Credentials", strMsg: "Please provide valid credentails", aryBtnNamesStrings: ["OK"], objDelegate: self)
    }
    
    func NW21()
    {
        let urlString = URL(string: "http://jsonplaceholder.typicode.com/users/1")
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                } else {
                    if let usableData = data {
                        print(usableData) //JSONSerialization
                        
                        do {
                            let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
                            
                            print(json) //JSONSerialization

                            
//                            if let names = json["names"] as? [String] {
//                                print(names)
//                            }
                            
                        } catch let error as NSError {
                            print("Failed to load: \(error.localizedDescription)")
                        }

                        
                    }
                }
            }
            task.resume()
        }
    }
    
}
