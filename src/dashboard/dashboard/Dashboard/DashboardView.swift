//
//  DashboardView.swift
//  dashboard
//
//  Created by Admin on 12/06/23.
//

import SwiftUI

struct DashboardView: View {
    @StateObject var viewModel: DashboardViewModel = DashboardViewModel(message: "Hellow world")
    
    
    var body: some View {
        VStack {
            List {

                Text("Dashboard, \(viewModel.responseObject?.message ?? "")")

                AnalyticsView()
            }
        }
        .onAppear {
            viewModel.fetchData()
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
