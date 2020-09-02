//
//  RegisterModel.swift
//  BloodSystem
//
//  Created by Ahmed Saeed on 8/5/20.
//  Copyright © 2020 Ahmed Saeed. All rights reserved.
//

import Foundation
struct RegisterModel : Codable {
    
    let status: Int?
    let message: String?
    let data:ModelRegister?
    
}
class ModelRegister:Codable
{
    
    let name:String?
    let email:String?
    let address:String?
    let phone:String?
    let longitude:String?
    let latitude:String?
    let id:Int?
}

