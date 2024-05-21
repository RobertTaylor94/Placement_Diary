//
//  DiaryEntryView.swift
//  Placement Diary
//
//  Created by Robert Taylor on 17/05/2024.
//

import SwiftUI

struct DiaryEntryView: View {
    @State var entry: DiaryEntry?
    
    var body: some View {
        Text("Date:")
        Text("Objective")
        Text(entry?.obj ?? "")
        Text("Reflection")
        Text(entry?.ref ?? "")
    }
}

#Preview {
    DiaryEntryView()
}
