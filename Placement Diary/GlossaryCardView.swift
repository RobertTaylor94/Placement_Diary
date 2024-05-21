//
//  GlossaryCardView.swift
//  Placement Diary
//
//  Created by Robert Taylor on 21/05/2024.
//

import SwiftUI

struct GlossaryCardView: View {
    
    var entry: GlossaryEntry
    @Binding var editing: Bool
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                Text(entry.name)
                    .font(.title3)
                Text(entry.desc)
            }
            .frame(minWidth: 200, idealWidth: 200, maxWidth: 300, minHeight: 200, idealHeight: 200, maxHeight: 400)
            .overlay(RoundedRectangle(cornerSize: CGSize(width: 30, height: 30), style: .continuous)
                .stroke(Color.black, style: StrokeStyle(lineWidth: 3)))
            if editing {
                Button(action: {
                    modelContext.delete(entry)
                }, label: {
                    Image(systemName: "minus.circle.fill")
                        .foregroundColor(Color.red)
                        .font(.title)
                        .offset(x: 12, y: -12)
                })
            }
        }
    }
}

#Preview {
    GlossaryCardView(entry: GlossaryEntry(name: "Terraform", desc: "Infrastructure as Code"), editing: .constant(true))
}
