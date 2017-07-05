//
//  LoginRequest.swift
//  BusinessManager
//
//  Created by impadmin on 27/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class SignupRequest: BaseRequest {

    var strUname:String?
    var strPassword:String?
    
    override init() {
        
        super.init()
        self.reqType = reqName.reqSignUp
    }
    
    override func getParser() -> SignupResponseParser {
        let objSignupResponseParser = SignupResponseParser()
        return objSignupResponseParser
    }
}
