//
//  ChartView.swift
//  dashboard
//
//  Created by Admin on 12/06/23.
//

import SwiftUI

struct ChartView: View {
    @StateObject var dashboardViewModel: DashboardViewModel
    
    var body: some View {
        GraphView(dashboardViewModel: dashboardViewModel)
            .frame(width: 328, height: 200)
    }
}
