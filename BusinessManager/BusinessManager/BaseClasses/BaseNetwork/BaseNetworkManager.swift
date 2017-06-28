//
//  BaseNetwork.swift
//  BusinessManager
//
//  Created by impadmin on 26/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class BaseNetworkManager: NSObject {
    
    var strBaseURL:String?
    var strParameters:String?
    
    
    
    
    //"http://jsonplaceholder.typicode.com/users/1"
    

    func initiateRequest(objRequest:BaseRequest, objDelegate:AnyObject)
    {
        if((strBaseURL?.isEmpty)!)
        {
            let urlString = URL(string: strBaseURL!)
            
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
    
}
