//
//  Data.swift
//  DynamicFloatingSheets
//
//  Created by 서준일 on 3/31/25.
//

import SwiftUI

struct Action: Identifiable, Hashable {
    var id: UUID = UUID()
    var image: String
    var title: String
}


