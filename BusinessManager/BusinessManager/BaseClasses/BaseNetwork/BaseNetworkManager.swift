//
//  BaseNetwork.swift
//  BusinessManager
//
//  Created by impadmin on 26/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

protocol ProtocolNtwrkMgrResponse {
    
    func processResponse(objResponse:AnyObject?)
    func processError(objError:Error?)
}

class BaseNetworkManager: NSObject, ProtocolReqExecuter {
    
    var strBaseURL:String?
    var strParameters:String?

    var objDelegate:ProtocolNtwrkMgrResponse?

    
    //"http://jsonplaceholder.typicode.com/users/1"
    

    func initiateRequest(objRequest:BaseRequest, objDelegate:AnyObject)
    {
        let objBaseReqExecuter = BaseRequestExecuter()
        objBaseReqExecuter.objDelegate = self
        objBaseReqExecuter.executeRequest(objRequest:objRequest, objDelegate:objDelegate)
        
        
        
//        if((strBaseURL?.isEmpty)!)
//        {
//            let urlString = URL(string: strBaseURL!)
//            
//            if let url = urlString {
//                let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//                    if error != nil {
//                        print(error!)
//                    } else {
//                        if let usableData = data {
//                            print(usableData) //JSONSerialization
//                            
//                            do {
//                                let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: AnyObject]
//                                
//                                print(json) //JSONSerialization
//                                
//                                
//                                //                            if let names = json["names"] as? [String] {
//                                //                                print(names)
//                                //                            }
//                                
//                            } catch let error as NSError {
//                                print("Failed to load: \(error.localizedDescription)")
//                            }
//                            
//                            
//                        }
//                    }
//                }
//                task.resume()
//            }
//        }
    }
    

    //Delegate BaseRequestExecuter
    func processExecuterResponse(objResponse:AnyObject?, objError:Error?)
    {
        if(objError != nil)
        {
            self.objDelegate?.processError(objError: objError)
        }
        else
        {
            self.objDelegate?.processResponse(objResponse: objResponse)

        }
    }

    
}
