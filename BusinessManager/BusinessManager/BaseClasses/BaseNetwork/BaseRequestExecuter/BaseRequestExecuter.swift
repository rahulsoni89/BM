//
//  BaseRequestExecuter.swift
//  BusinessManager
//
//  Created by impadmin on 28/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

protocol ProtocolReqExecuter {
    
    func processExecuterResponse(objResponse:AnyObject?, objError:Error?)
}


class BaseRequestExecuter: NSObject, ProtocolHTTP {
    
    var objDelegate:ProtocolReqExecuter?
    
    func executeRequest(objRequest:BaseRequest, objDelegate:AnyObject) {
        
        let objBaseHTTPCaller = BaseHTTPCaller()
       
        objBaseHTTPCaller.objDelegate = self
        
        if(objRequest.reqURL != nil){
            objBaseHTTPCaller.reqStrURL = objRequest.reqURL
        }
        if(objRequest.reqHTTPMethodType != nil){
            objBaseHTTPCaller.reqStrRequestType = objRequest.reqHTTPMethodType
        }
        if(objRequest.reqData != nil){
            objBaseHTTPCaller.reqDataJsonParameters = objRequest.reqData
        }
        if(objRequest.reqHeaders != nil){
            objBaseHTTPCaller.reqDictHeaders = objRequest.reqHeaders
        }
        if(objRequest.reqValues != nil){
            objBaseHTTPCaller.reqDictValues = objRequest.reqValues
        }
        
        
    }
    
    //HTTP Delegate
    func processHTTPResponse(objResponse:AnyObject?, objError:Error?)
    {
        
    }

}
