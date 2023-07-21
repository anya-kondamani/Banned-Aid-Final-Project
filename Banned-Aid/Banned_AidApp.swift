//
//  Banned_AidApp.swift
//  Banned-Aid
//
//  Created by anya kondamani on 7/19/23.
import SwiftUI

@main
struct Banned_AidApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
