//
//  SignupViewController.swift
//  BusinessManager
//
//  Created by impadmin on 16/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class SignupViewController: BaseViewController {
    
    @IBOutlet weak var txtFFirmName: UITextField!
    @IBOutlet weak var txtFFLName: UITextField!
    @IBOutlet weak var txtFEmail: UITextField!
    @IBOutlet weak var txtFMobile: UITextField!
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func btnActionSignup(_ sender: UIButton) {
    }
    
    @IBAction func btnActionMoveToLogin(_ sender: UIButton) {
    }
    

}
