//
//  Pet+CoreDataProperties.swift
//  Be My Pet
//
//  Created by iossenac on 24/09/16.
//  Copyright © 2016 Kassiane Mentz. All rights reserved.
//

import Foundation
import CoreData


extension Pet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pet> {
        return NSFetchRequest<Pet>(entityName: "Pet");
    }

    @NSManaged public var nome: String?
    @NSManaged public var especie: String?
    @NSManaged public var raca: String?
    @NSManaged public var idade: Int32
    @NSManaged public var peso: Float
    @NSManaged public var sexo: String?
    @NSManaged public var saude: String?
    @NSManaged public var castrado: Bool

}
