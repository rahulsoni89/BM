//
//  LoginRequest.swift
//  BusinessManager
//
//  Created by impadmin on 27/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class LoginRequest: BaseRequest {

    var strUname:String?
    var strPassword:String?
    
    override init() {
        
        super.init()
        self.reqType = reqName.reqLogin
    }
    
    override func getParser() -> LoginResponseParser {
        let objLoginResponseParser = LoginResponseParser()
        return objLoginResponseParser
    }
}
