//
//  JsonHelper.swift
//  Test-CoreData
//
//  Created by Hassan Abbasi on 14/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation


class JsonHelper{
    
    
    func toPerson(with data:[String:Any], andPerson person:Person){
        if let name = data["name"] as? String {
            person.name = name
        }
    }
    
}
