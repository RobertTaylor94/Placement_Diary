//
//  Item.swift
//  Placement Diary
//
//  Created by Robert Taylor on 17/05/2024.
//

import Foundation
import SwiftData

@Model
final class DiaryEntry {
    var date: Date
    var obj: String
    var eval: String
    var keyAch: String
    var ref: String
    var plan: String
    var ksb: String
    var evidence: String
    
    init(date: Date = Date(), obj: String = "", eval: String = "", keyAch: String = "", ref: String = "", plan: String = "", ksb: String = "", evidence: String = "") {
        self.date = date
        self.obj = obj
        self.eval = eval
        self.keyAch = keyAch
        self.ref = ref
        self.plan = plan
        self.ksb = ksb
        self.evidence = evidence
    }
}
