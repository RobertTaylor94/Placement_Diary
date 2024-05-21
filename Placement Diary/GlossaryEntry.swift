//
//  GlossaryEntry.swift
//  Placement Diary
//
//  Created by Robert Taylor on 21/05/2024.
//

import Foundation
import SwiftData

@Model
final class GlossaryEntry {
    @Attribute(.unique) var name: String
    var desc: String
    
    init(name: String, desc: String) {
        self.name = name
        self.desc = desc
    }
}
