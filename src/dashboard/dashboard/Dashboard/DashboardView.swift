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
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                HStack {
                    Text("Dashboard, \(viewModel.responseObject?.message ?? "")")
                        .font(.figTreeBold24)
                        .foregroundColor(Color.white)
                    Spacer()
                    Image("gear-icon")
                        .frame(width: 40,height: 40)
                }
                .padding(.horizontal)
                .padding(.top, 52)
                .padding(.bottom, 48)
                
            
                
                AnalyticsView(dashboardViewModel: viewModel)
                    .frame(width: UIScreen.main.bounds.width)
                    .padding(.top, 32)
                    .background(Color.backgroundGray)
                    .roundedCorners([UIRectCorner.topLeft, UIRectCorner.topRight], radius: 16)
                    
            }
        }
        
        .frame(width: UIScreen.main.bounds.width)
        .padding(.horizontal, 0)
        .onAppear {
            viewModel.fetchData()
        }
        .background(Color.darkBluebg)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
