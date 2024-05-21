//
//  AddGlossaryEntryView.swift
//  Placement Diary
//
//  Created by Robert Taylor on 21/05/2024.
//

import SwiftUI

struct AddGlossaryEntryView: View {
    
    @Binding var glossaryEntry: String
    @Binding var entryDescription: String
    @Binding var isShowingSheet: Bool
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Add Glossary Entry")
                .font(.title)
            TextField("Entry", text: $glossaryEntry)
            ZStack(alignment: .topLeading) {
                TextEditor(text: $entryDescription)
                    .lineLimit(4)
                if entryDescription.isEmpty {
                    Text("Description")
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 7.0)
                        .padding(.leading, 1.0)
                        .opacity(0.4)
                }
            }
            
            Button(action: {
                saveEntry()
                isShowingSheet.toggle()
            }) {
                Text("Add")
                    .padding(.horizontal)
                    
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .frame(maxWidth: 500)
    }
    
    func saveEntry() {
        let newEntry = GlossaryEntry(name: glossaryEntry, desc: entryDescription)
        glossaryEntry = ""
        entryDescription = ""
        modelContext.insert(newEntry)
    }
}

#Preview {
    AddGlossaryEntryView(glossaryEntry: .constant(""), entryDescription: .constant(""), isShowingSheet: .constant(true))
}
