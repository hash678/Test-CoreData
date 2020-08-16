//
//  NetworkingService.swift
//  Test-CoreData
//
//  Created by Hassan Abbasi on 14/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import Foundation
import CoreData

class NetworkingService{
    
    
}

class CoreDataService{
    
    
    func saveData(_ data:[[String:Any]]){
        let jsonHelper = JsonHelper()
        
        
        let taskContext = PersistenceHelper.shared.persistentContainer.newBackgroundContext()
        taskContext.mergePolicy = NSMergePolicy.overwrite
        
        taskContext.performAndWait {
            for i in data{
                let person =  Person(context: taskContext)
                jsonHelper.toPerson(with: i, andPerson: person)
                
                
                //Exists in another thread not the UI thread
              //  person
                DispatchQueue.main.async {
                   // person
                }
                
            }
            
             try? taskContext.save()
        }

       
        
    }
    
}
