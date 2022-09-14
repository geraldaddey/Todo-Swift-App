//
//  TodoApp.swift
//  Todo
//
//  Created by Quansah on 14/09/2022.
//

import SwiftUI

@main
struct TodoApp: App {
    
    let persistentContainer = CoreDataManager.shared.persistentContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
