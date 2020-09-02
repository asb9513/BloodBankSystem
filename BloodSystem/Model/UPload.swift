//
//  UPload.swift
//  BloodSystem
//
//  Created by Ahmed Saeed on 8/5/20.
//  Copyright © 2020 Ahmed Saeed. All rights reserved.
//

import Foundation
struct UpdateBlood:Decodable {
    let type:String?
    let need:Int?
    let available:Int?
}
