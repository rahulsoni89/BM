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
    
    func callAPIWithRequest(objRequest:BaseRequest) {
        
        //declare this property where it won't go out of scope relative to your listener
        let reachability = Reachability()!
        
        reachability.whenReachable = { reachability in
            // this is called on a background thread, but UI updates must
            // be on the main thread, like this:
            DispatchQueue.main.async {
                if reachability.isReachableViaWiFi {
                    print("Reachable via WiFi")
                } else {
                    print("Reachable via Cellular")
                }
            }
        }
        reachability.whenUnreachable = { reachability in
            // this is called on a background thread, but UI updates must
            // be on the main thread, like this:
            DispatchQueue.main.async {
                print("Not reachable")
            }
        }
        
    }
    


    
    func NW2()
        {
            let urlString = URL(string: "http://jsonplaceholder.typicode.com/users/1")
            if let url = urlString {
                let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                    if error != nil {
                        print(error!)
                    } else {
                        if let usableData = data {
                            print(usableData) //JSONSerialization
                        }
                    }
                }
                task.resume()
        }
    }
    
        func NW1()
        {
            let config = URLSessionConfiguration.default
            let session = URLSession(configuration: config)
            let url = URL(string: "YOUR URL STRING")!
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!.localizedDescription)
                } else {
                    print(data) // JSON Serialization
                }
            }
            task.resume()
        }

}
