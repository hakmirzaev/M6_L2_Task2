//
//  M6_L2_Task2App.swift
//  M6_L2_Task2
//
//  Created by Bekhruz Hakmirzaev on 01/12/22.
//

import SwiftUI

@main
struct M6_L2_Task2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
