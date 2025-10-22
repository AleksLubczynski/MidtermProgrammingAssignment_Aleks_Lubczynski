//
//  Item.swift
//  MidtermProgrammingAssignment_Aleks_Lubczynski
//
//  Created by Aleks Lubczynski on 10/20/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
