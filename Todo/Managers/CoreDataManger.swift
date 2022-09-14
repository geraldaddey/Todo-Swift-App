//
//  CoreDataManger.swift
//  Todo
//
//  Created by Quansah on 14/09/2022.
//

import Foundation
import CoreData

class CoreDataManager{
    
    
    let persistentContainer:NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init() {
        
        persistentContainer = NSPersistentContainer(name:"TodoModel")
        persistentContainer.loadPersistentStores{ description, error in
            if let error = error {
                fatalError("Unable to Initialise Core Data   \(error)")
            }
            
    }
 
    
    
}
}
