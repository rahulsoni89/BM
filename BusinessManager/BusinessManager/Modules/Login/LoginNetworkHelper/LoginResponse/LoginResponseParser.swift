//
//  LoginResponsePArser.swift
//  BusinessManager
//
//  Created by Rahul Soni on 6/30/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class LoginResponseParser: BaseResponseParser {

    override func parsedata(objResponse:AnyObject?) -> BaseEntity {
        
        let objLoginEntity = LoginEntity()
        
        return objLoginEntity
    }
}
