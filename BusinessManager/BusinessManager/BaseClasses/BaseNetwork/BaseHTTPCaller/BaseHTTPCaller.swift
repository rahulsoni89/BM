//
//  BaseHTTPCaller.swift
//  BusinessManager
//
//  Created by impadmin on 28/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

protocol ProtocolHTTP {
 
    func processHTTPResponse(objResponse:AnyObject?, objError:Error?)
}

class BaseHTTPCaller: NSObject {
    
    var reqStrURL:String?
    var reqStrRequestType:String?
    var reqDataJsonParameters:Data?
    var reqDictHeaders:[String:String]?
    var reqDictValues:[String:String]?
    var objDelegate:ProtocolHTTP?
    
    func test()
    {
        //Prepare json data
        let jsonData = reqDataJsonParameters
        
        //Create post request
        let url = URL(string: reqStrURL!)!
        var request = URLRequest(url: url)
        
        if(reqStrRequestType != nil)
        {
            request.httpMethod = reqStrRequestType
        }
        
        //Insert json data to the request
        if (jsonData != nil) {
            request.httpBody = jsonData
        }
        
        //Set Headers
        for strKeyOfHeader in (reqDictHeaders?.keys)! {
            request.setValue(reqDictHeaders?[strKeyOfHeader], forHTTPHeaderField: strKeyOfHeader)
        }
        
        //Set Values
        for strKeyOfValue in (reqDictValues?.keys)! {
            request.setValue(reqDictValues?[strKeyOfValue], forHTTPHeaderField: strKeyOfValue)
        }

        //Start Task
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                
               // self.objDelegate?.responseProcess(objResponse: nil, objError:error)
                
                print(error!)
            }
            else {
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
