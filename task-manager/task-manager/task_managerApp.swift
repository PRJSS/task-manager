//
//  task_managerApp.swift
//  task-manager
//
//  Created by Бернат Данила on 24.07.2022.
//

import SwiftUI

@main
struct task_managerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
