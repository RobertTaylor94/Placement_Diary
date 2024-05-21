//
//  TabContentView.swift
//  Placement Diary
//
//  Created by Robert Taylor on 17/05/2024.
//

import SwiftUI

struct TabContentView: View {
    var body: some View {
        TabView {
            RetroDiaryView()
                .tabItem {
                    Label("Retro Diary", systemImage: "book.pages")
                }
            GlossaryView()
                .tabItem {
                    Label("Glossary", systemImage: "character.book.closed.fill")
                }
        }
    }
}

#Preview {
    TabContentView()
}
