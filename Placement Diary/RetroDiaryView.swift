//
//  RetroDiaryView.swift
//  Placement Diary
//
//  Created by Robert Taylor on 17/05/2024.
//

import SwiftUI
import SwiftData

enum Detail {
case add, view, none
}

struct RetroDiaryView: View {
    @Query var entries: [DiaryEntry]
    @State private var selected: DiaryEntry?
    @State private var detailPane = Detail.none
    
    var body: some View {
        NavigationSplitView {
            List(entries) { entry in
                NavigationLink {
                    DiaryEntryView(entry: entry)
                } label: {
                    Text("WC \(entry.dateFormatted)")
                }
            }
            Button(action: {
                detailPane = Detail.add
            }, label: {
                Text("Add Entry")
                    .padding(.horizontal)
                    
            })
            .padding()
            .buttonStyle(.borderedProminent)
            .navigationTitle("Retro Diary")
        } detail: {
            if detailPane == Detail.none {
                Text("Select an entry")
            } else if detailPane == Detail.add {
                AddDiaryEntryView()
            }
        }
    }
}

#Preview {
    RetroDiaryView()
}
