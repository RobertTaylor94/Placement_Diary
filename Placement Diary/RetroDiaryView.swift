//
//  RetroDiaryView.swift
//  Placement Diary
//
//  Created by Robert Taylor on 17/05/2024.
//

import SwiftUI
import SwiftData

struct RetroDiaryView: View {
    @Query var entries: [DiaryEntry]
    @State private var selected: DiaryEntry?
    @State private var showAddEntryView = false
    
    var body: some View {
        NavigationSplitView {
            List(entries, selection: $selected) { entry in
                NavigationLink {
                    DiaryEntryView(entry: entry)
                } label: {
                    Text("WC \(entry.dateFormatted)")
                }
            }
            NavigationLink {
                AddDiaryEntryView()
            } label : {
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 200, height: 40)
                    Text("Add Entry")
                        .foregroundStyle(Color.white)
                }
            }
            .padding()
            .navigationTitle("Retro Diary")
        } detail: {
            Text("Select an entry or add a new one")
        }
    }
}

#Preview {
    RetroDiaryView()
}
