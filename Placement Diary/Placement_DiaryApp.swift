//
//  Placement_DiaryApp.swift
//  Placement Diary
//
//  Created by Robert Taylor on 17/05/2024.
//

import SwiftUI
import SwiftData

@main
struct Placement_DiaryApp: App {
    var container: ModelContainer
    init() {
        do {
            let schema = Schema([DiaryEntry.self, GlossaryEntry.self])
            let config = ModelConfiguration(schema: schema, allowsSave: true)
            container = try ModelContainer(for: schema, configurations: config)
        } catch {
            fatalError("Failed to configure SwiftData Container")
        }
    }
    

    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .modelContainer(container)
    }
}
