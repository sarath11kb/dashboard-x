//
//  Models.swift
//  dashboard
//
//  Created by Admin on 18/06/23.
//

import Foundation

struct ChartData: Identifiable {
    var date: String
    var count: Int
    var id = UUID()
}

enum LinkType {
    case recent
    case top
}
