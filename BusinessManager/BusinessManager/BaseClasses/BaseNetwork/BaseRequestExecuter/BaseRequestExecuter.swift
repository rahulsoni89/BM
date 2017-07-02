//
//  BaseRequestExecuter.swift
//  BusinessManager
//
//  Created by impadmin on 28/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

protocol ProtocolReqExecuter {
    
    func handleResponse(objResponse:AnyObject?, objRequest:BaseRequest?)
}


class BaseRequestExecuter: NSObject, ProtocolHTTP {
    
    var objDelegate:ProtocolReqExecuter?
    var objRequest:BaseRequest?
    
    func executeRequest(objRequest:BaseRequest, objDelegate:AnyObject) {
        
        self.objRequest = objRequest;
        
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
        
        objBaseHTTPCaller.startCallingAPI()
    }
    
    //HTTP Delegate
    func processHTTPResponse(objResponse:AnyObject?, objError:Error?)
    {
        let objBaseEntity:BaseEntity?
        
        if(objError != nil)
        {
            let objResponseParser = self.objRequest?.getParser()
            objBaseEntity = objResponseParser?.parseError(objResponse: objResponse)
        }
        else
        {
            let objResponseParser = self.objRequest?.getParser()
            objBaseEntity = objResponseParser?.parsedata(objResponse: objResponse)
        }
        
        self.objDelegate?.handleResponse(objResponse: objBaseEntity, objRequest: self.objRequest)
    }

}
