//
//  DataController.swift
//  Banned-Aid
//
//  Created by anya kondamani on 7/21/23.
//
//
//  DataController.swift
//  BookWarm
//
//  Created by Bevalyne Moseti on 7/20/23.
//
import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "BookWarm")

    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
