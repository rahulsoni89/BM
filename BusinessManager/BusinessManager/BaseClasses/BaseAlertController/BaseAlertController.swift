//
//  BaseAlertController.swift
//  BusinessManager
//
//  Created by Rahul Soni on 6/17/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit


protocol BaseAlertDelegates{
    
    func showAlertWith(strTitle: String, strMsg: String, aryBtnNamesStrings: [String], intTag: Int, objDelegate: Any)
    func alertAction(intTag: Int)
    
}

class BaseAlertController: UIViewController {

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

}
