//
//  dashboardApp.swift
//  dashboard
//
//  Created by Admin on 12/06/23.
//

import SwiftUI

@main
struct dashboardApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            DashboardView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
