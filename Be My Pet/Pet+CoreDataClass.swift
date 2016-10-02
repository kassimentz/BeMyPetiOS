//
//  Pet+CoreDataClass.swift
//  Be My Pet
//
//  Created by iossenac on 24/09/16.
//  Copyright © 2016 Kassiane Mentz. All rights reserved.
//

import Foundation
import CoreData


public class Pet: NSManagedObject {
    
    class func createWith(especie: String, nome: String?, raca: String?, idade: Int32?, peso: Float?, in context: NSManagedObjectContext) -> Pet?{
        
        let request = NSFetchRequest<Pet>(entityName: "Pet")
        let query = "nome == %@"
        let params = [ nome ]
        
        request.predicate = NSPredicate(format: query, argumentArray: params)
        
        //tenta recuperar o pet
        if let pet = (try? context.fetch(request))?.first{
            return pet
        }
        
        //senao cria o pet
        if let pet = NSEntityDescription.insertNewObject(forEntityName: "Pet", into: context) as? Pet {
            pet.especie = especie
            pet.nome = nome
            pet.raca = raca
            pet.idade = idade ?? 0
            pet.peso = peso ?? 0
            
            return pet
        }
        
        //em caso de erro
        return nil
        
    }

}
