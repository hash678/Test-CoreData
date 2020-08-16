//
//  Person+CoreDataProperties.swift
//  Test-CoreData
//
//  Created by Hassan Abbasi on 14/08/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var pets: Set<Animal>?

}

// MARK: Generated accessors for pets
extension Person {

    @objc(addPetsObject:)
    @NSManaged public func addToPets(_ value: Animal)

    @objc(removePetsObject:)
    @NSManaged public func removeFromPets(_ value: Animal)

    @objc(addPets:)
    @NSManaged public func addToPets(_ values: Set<Animal>)

    @objc(removePets:)
    @NSManaged public func removeFromPets(_ values: Set<Animal>)

}
