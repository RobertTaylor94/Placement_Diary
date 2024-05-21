//
//  GlossaryView.swift
//  Placement Diary
//
//  Created by Robert Taylor on 21/05/2024.
//

import SwiftUI
import SwiftData

struct GlossaryView: View {
    @Query var entries: [GlossaryEntry]
    @State private var isShowingSheet = false
    @State var editing = false
    @State var glossaryEntry: String = ""
    @State var glossaryDesc: String = ""
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(entries) { entry in
                        GlossaryCardView(entry: entry, editing: $editing)
                    }
                }
                .navigationTitle("Glossary")
                .toolbar{
                    Button(action: {
                        isShowingSheet = true
                    }, label: {
                        Image(systemName: "plus.circle")
                    })
                    .popover(isPresented: $isShowingSheet, content: {
                        AddGlossaryEntryView(glossaryEntry: $glossaryEntry, entryDescription: $glossaryDesc, isShowingSheet: $isShowingSheet)
                            .padding()
                    })
                    Button(action: {
                        editing.toggle()
                    }, label: {
                        if editing {
                            Text("Done")
                        } else {
                            Text("Edit")
                        }
                    })
                }
            }
        }
        
    }
}

#Preview {
    GlossaryView()
}
