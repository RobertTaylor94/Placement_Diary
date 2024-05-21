//
//  ContentView.swift
//  Placement Diary
//
//  Created by Robert Taylor on 17/05/2024.
//

import SwiftUI
import SwiftData

struct MainView: View {
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        TabContentView()
    }
}

#Preview {
    MainView()
        .modelContainer(for: [DiaryEntry.self, GlossaryEntry.self], inMemory: true, isAutosaveEnabled: true)
}
