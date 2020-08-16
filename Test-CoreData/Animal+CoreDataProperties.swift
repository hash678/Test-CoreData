//
//  Animal+CoreDataProperties.swift
//  Test-CoreData
//
//  Created by Hassan Abbasi on 14/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//
//

import Foundation
import CoreData


extension Animal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Animal> {
        return NSFetchRequest<Animal>(entityName: "Animal")
    }

    @NSManaged public var name: String?
    @NSManaged public var color: String?
    @NSManaged public var owner: Person?

}
