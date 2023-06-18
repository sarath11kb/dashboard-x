//
//  AnalyticsView.swift
//  dashboard
//
//  Created by Admin on 12/06/23.
//

import SwiftUI

struct AnalyticsView: View {
    @StateObject var dashboardViewModel = DashboardViewModel(message: "analyticsView")
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(Date.getGreeting())
                        .font(.figTreeLight16)
                        .foregroundColor(.subText)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                
                HStack {
                    Text("Ajay Manwa ")
                        .font(.figTreeBold24)
                        .foregroundColor(.text)
                    Image("wave")
                        .frame(width: 28, height: 28)
                }
                
                
            }
            
            ChartView(dashboardViewModel: dashboardViewModel)
            ScrollCardsView(dashboardViewModel: dashboardViewModel)
            
            HStack {
                Image("price-boost")
                Text("View Analytics")
                    .font(.figTreeMedium16)
                    .foregroundColor(.text)
            }
            .frame(width: 328, height: 24)
            .padding(.vertical)
            .foregroundColor(.gray)
            .overlay(
                RoundedRectangle(cornerRadius: 8).stroke(Color.searchButtonBorder, lineWidth: 2)
            )
            
            LinksView(dashboardViewModel: dashboardViewModel)
            
            
        }
        .frame(width: 328)
        .foregroundColor(.white)
    }
}

struct AnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsView()
    }
}
