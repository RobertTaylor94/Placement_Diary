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
                    Text(entry.obj)
                }
            }
            Button(action: {
                detailPane = Detail.add
            }, label: {
                Text("Add Entry")
            })
            .navigationTitle("Retro Diary")
//            .toolbar {
//                Button(action: {
//                    detailPane = Detail.add
//                }, label: {
//                    Image(systemName: "plus.circle")
//                })
//            }
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
