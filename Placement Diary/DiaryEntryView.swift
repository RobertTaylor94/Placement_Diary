//
//  DiaryEntryView.swift
//  Placement Diary
//
//  Created by Robert Taylor on 17/05/2024.
//

import SwiftUI

struct DiaryEntryView: View {
    @State var entry: DiaryEntry
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Objective of the Week")
                .underline()
            Text(entry.obj)
            Text("Emotional Evaluation")
                .underline()
            Text(entry.eval)
            Text("Key Achievements")
                .underline()
            Text(entry.keyAch)
            Text("Reflection")
                .underline()
            Text(entry.ref)
            Text("Personal Plan")
                .underline()
            Text(entry.plan)
            Text("KSBs")
                .underline()
            Text(entry.ksb)
            Text("Evidence")
                .underline()
            Text(entry.evidence)
        }
        .navigationTitle(entry.dateFormatted)
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    DiaryEntryView(entry: DiaryEntry(
        obj: "Finish black duck project",
        eval: "I have felt really good this week!",
        keyAch: "I managed to get a jenkins pipeline all working",
        ref: "Insert STAR reflection here",
        plan: "Keep on keeping on"))
}
