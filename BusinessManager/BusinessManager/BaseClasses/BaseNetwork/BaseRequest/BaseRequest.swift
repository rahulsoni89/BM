//
//  BaseRequest.swift
//  BusinessManager
//
//  Created by impadmin on 27/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class BaseRequest: NSObject {
    
    enum reqName {
        case reqLogin
        case reqSignUp
    }
    
    var reqInBackground:Bool?
    var reqURL:String?
    var reqPostBody:String?
    var reqContentType:String?
    var reqHTTPMethodType:String?
    var reqType:reqName?
    var reqHeaders:[String:String]?
    var reqValues:[String:String]?
    var reqData:Data?
    
    func getParser() -> BaseResponseParser {
        return self.getParser()
    }
}
