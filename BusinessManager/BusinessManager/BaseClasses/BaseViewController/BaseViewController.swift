//
//  BaseViewController.swift
//  BusinessManager
//
//  Created by Rahul Soni on 6/11/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, BaseAlertDelegates {

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
    
    func showAlertWith(strTitle: String, strMsg: String, aryBtnNamesStrings: [String],  objDelegate: Any)
    {
        let alert = UIAlertController(title: strTitle, message: strMsg, preferredStyle: UIAlertControllerStyle.alert)
        
        for strButtonName in aryBtnNamesStrings
        {
            alert.addAction(UIAlertAction(title: strButtonName, style: .default, handler: { action in
                
                self.alertAction(strTitle: action.title!, objDelegate: objDelegate)
                
                //alert.dismiss(animated: true, completion: nil)//dismiss show You alert, on click is Cancel
                
            }))
            
        }
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func alertAction(strTitle: String, objDelegate: Any)
    {
        
    }

}
