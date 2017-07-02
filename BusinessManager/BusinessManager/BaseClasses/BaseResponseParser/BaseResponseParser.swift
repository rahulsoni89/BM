//
//  BaseResponseParser.swift
//  BusinessManager
//
//  Created by Rahul Soni on 6/30/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class BaseResponseParser: NSObject {
    
    func parsedata(objResponse:AnyObject?) -> BaseEntity {
        return self.parsedata(objResponse: objResponse)
    }
    
    func parseError(objResponse:AnyObject?) -> BaseEntity {
        
        let objBaseEntity = BaseEntity()
        objBaseEntity.intStatusCode = 500;
        objBaseEntity.isError = true;
        objBaseEntity.strError = "Error details temp";
        
        return objBaseEntity
        
    }
}
