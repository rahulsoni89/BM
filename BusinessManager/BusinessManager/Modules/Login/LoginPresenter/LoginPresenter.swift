//
//  LoginPresenter.swift
//  BusinessManager
//
//  Created by impadmin on 16/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

protocol LoginPresenterDelegate{
    func responseToLoginController(isError: Bool, strErrorDetails: String)
    func showError(strError: String)
}

class LoginPresenter: NSObject, LoginInteractorDelegate {
    
    var delgLoginPresenter:LoginPresenterDelegate! = nil

    func loginBtnPressed(strUsername:String, strPassword:String) {
        
        let objInteractor: LoginInteractor = LoginInteractor()
        objInteractor.delegLoginInteractor = self
        objInteractor.checkUserAuthentication(strUsername: strUsername, strPassword: strPassword)
    }

    func responseToLoginPresenter(isError: Bool, strErrorDetails: String)
    {
        if(isError){
            delgLoginPresenter.showError(strError: strErrorDetails)
        }
        else{
            
        }
        
    }
}
