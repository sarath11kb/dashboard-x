//
//  ScrollCardsView.swift
//  dashboard
//
//  Created by Admin on 12/06/23.
//

import SwiftUI

struct ScrollCardsView: View {
    @StateObject var dashboardViewModel: DashboardViewModel = DashboardViewModel(message: "analyticsView")
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                if let todaysClicks = dashboardViewModel.responseObject?.todayClicks {
                    AnalyticsCardView(heading: String(todaysClicks)  , subHeading: "Today's Clicks", imageSource: "todays-clicks")
                }
                if let topLocation = dashboardViewModel.responseObject?.topLocation {
                    AnalyticsCardView(heading: topLocation, subHeading: "Top Location", imageSource: "top-location")
                }
                if let topSource = dashboardViewModel.responseObject?.topSource {
                    AnalyticsCardView(heading: topSource , subHeading: "Top Source", imageSource: "top-source")
                }
            }
            .padding(.vertical, 20)
            
        }
    }
}
