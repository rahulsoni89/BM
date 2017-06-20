//
//  LoginInteractor.swift
//  BusinessManager
//
//  Created by impadmin on 16/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

protocol LoginInteractorDelegate{
    func responseToLoginPresenter(isError: Bool, strErrorDetails: String)
}

class LoginInteractor: NSObject {
    
    var delegLoginInteractor: LoginInteractorDelegate! = nil
    

    func checkUserAuthentication(strUsername:String, strPassword:String) {
        
        let validatationResponse = self.validateCredentials(strUsername: strUsername, strPassword: strPassword)
        
        if(!validatationResponse.0)
        {
            delegLoginInteractor.responseToLoginPresenter(isError: !(validatationResponse.0), strErrorDetails: validatationResponse.1!)
        }
        else
        {
            
        }
        
    }
    
    func validateCredentials(strUsername:String, strPassword:String) -> (Bool, String?) {
        
        if(!(BaseValidator.validateIsStringHavingData(strData: strUsername)))
        {
            return (false, "Please enter Username")
        }
        if(!(BaseValidator.validateIsStringHavingData(strData: strPassword)))
        {
            return (false, "Please enter Password")
        }
        
        return (true, nil)
    }
    
}
