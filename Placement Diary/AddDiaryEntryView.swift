//
//  AddDiaryEntryView.swift
//  Placement Diary
//
//  Created by Robert Taylor on 17/05/2024.
//

import SwiftUI
import SwiftData

struct AddDiaryEntryView: View {
    @State var objective = ""
    @State var emotional = ""
    @State var achievements = ""
    @State var reflection = ""
    @State var plan = ""
    @State var ksb = ""
    @State var evidence = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Outline of Work or Learning Objectives")
                    .font(.title2)
                    .underline()
                TextField("placeholder", text: $objective)
            }
            .padding()
            VStack(alignment: .leading, spacing: 10) {
                Text("Emotional Evaluation")
                    .font(.title2)
                    .underline()
                TextField("placeholder", text: $emotional)
            }
            .padding()
            VStack(alignment: .leading, spacing: 10) {
                Text("Key Achievments")
                    .font(.title2)
                    .underline()
                TextField("placeholder", text: $achievements)
            }
            .padding()
            VStack(alignment: .leading, spacing: 10) {
                Text("Reflections")
                    .font(.title2)
                    .underline()
                TextField("placeholder", text: $reflection)
            }
            .padding()
            VStack(alignment: .leading, spacing: 10) {
                Text("My Plan")
                    .font(.title2)
                    .underline()
                TextField("placeholder", text: $plan)
            }
            .padding()
            VStack(alignment: .leading, spacing: 10) {
                Text("KSB")
                    .font(.title2)
                    .underline()
                TextField("placeholder", text: $ksb)
            }
            .padding()
            VStack(alignment: .leading, spacing: 10) {
                Text("Evidence")
                    .font(.title2)
                    .underline()
                TextField("placeholder", text: $evidence)
            }
            .padding()
            .navigationTitle("New Entry")
            .toolbar {
                Button(action: {
                    addEntry(obj: objective, emot: emotional, achiev: achievements, ref: reflection, plan: plan, ksb: ksb, evid: evidence)
                }, label: {
                    Image(systemName: "plus.circle")
                })
            }
        }
//        .padding()
    }
}

func addEntry(obj: String, emot: String, achiev: String, ref: String, plan: String, ksb: String, evid: String) {
    
    @Environment(\.modelContext) var modelContext
    let newEntry = DiaryEntry(obj: obj, eval: emot, keyAch: achiev, ref: ref, plan: plan, ksb: ksb, evidence: evid)
    
    modelContext.insert(newEntry)
}

#Preview {
    AddDiaryEntryView()
}
