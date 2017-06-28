//
//  BaseRequestExecuter.swift
//  BusinessManager
//
//  Created by impadmin on 28/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class BaseRequestExecuter: NSObject, ProtocolHTTP {
    
    

    func executeRequest(objRequest: BaseRequest) {
        
    }
    
    //HTTP Delegate
    func responseProcess(objResponse:AnyObject, objError:Error)
    {
        
    }

}
