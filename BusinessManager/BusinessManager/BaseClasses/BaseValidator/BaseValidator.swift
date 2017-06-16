//
//  BaseValidator.swift
//  BusinessManager
//
//  Created by impadmin on 16/06/17.
//  Copyright © 2017 Rahul Soni. All rights reserved.
//

import UIKit

class BaseValidator: NSObject {

    static func validateStringHavingData(strData: String) -> Bool {
        if strData.characters.count > 0{
            return true
        }
        else{
            return false
        }
    }
    
}
