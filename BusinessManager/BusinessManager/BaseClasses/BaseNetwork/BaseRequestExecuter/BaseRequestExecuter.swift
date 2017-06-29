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
       
        //HTTP protocol
        objBaseHTTPCaller.objDelegate = self
        
        //Request URL
        if(objRequest.reqURL != nil){
            objBaseHTTPCaller.reqStrURL = objRequest.reqURL
        }
        
        //Request HTTP Method Type
        if(objRequest.reqHTTPMethodType != nil){
            objBaseHTTPCaller.reqStrRequestType = objRequest.reqHTTPMethodType
        }
        
        //Request Parameter need to pass
        if(objRequest.reqData != nil){
            objBaseHTTPCaller.reqDataJsonParameters = objRequest.reqData
        }
        
        //Request Headers
        if(objRequest.reqHeaders != nil){
            objBaseHTTPCaller.reqDictHeaders = objRequest.reqHeaders
        }
        
        //Request Values
        if(objRequest.reqValues != nil){
            objBaseHTTPCaller.reqDictValues = objRequest.reqValues
        }
        
        
    }
    
    //HTTP Delegate
    func processHTTPResponse(objResponse:AnyObject?, objError:Error?)
    {
        self.objDelegate?.processExecuterResponse(objResponse: objResponse, objError: objError)
    }

}
