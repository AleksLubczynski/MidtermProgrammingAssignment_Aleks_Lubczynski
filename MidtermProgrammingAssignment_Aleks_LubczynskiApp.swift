//
//  MidtermProgrammingAssignment_Aleks_LubczynskiApp.swift
//  MidtermProgrammingAssignment_Aleks_Lubczynski
//
//  Created by Aleks Lubczynski on 10/20/25.
//

import SwiftUI
import SwiftData

@main
struct MidtermProgrammingAssignment_Aleks_LubczynskiApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
