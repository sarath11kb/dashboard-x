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
        ZStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    HStack {
                        Text("Dashboard")
                            .font(.figTreeBold24)
                            .foregroundColor(Color.white)
                        Spacer()
                        Image("gear-icon")
                            .frame(width: 40,height: 40)
                    }
                    .padding(.horizontal)
                    .padding(.top, 48)
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
            .padding(.bottom, 70)
            .onAppear {
                viewModel.fetchData()
            }
            .background(Color.darkBluebg)
            
            VStack {
                Color.clear
                HStack {
                    Group {
                        BottomTabCardView(image: "link", title: "Links", isSelected: true)
                        BottomTabCardView(image: "magazine", title: "Courses", isSelected: false)
                        Image("plus")
                            .padding(.top, -20)
                            .background(Ellipse().frame(width: 80,height:  60).foregroundColor(.appBackground).padding(.top, -40))
                        
                        BottomTabCardView(image: "fast-forward", title: "Campaigns", isSelected: false)
                        BottomTabCardView(image: "user", title: "Profile", isSelected: false)
                    }
                    
                }
                .frame(width: UIScreen.main.bounds.width, height: 77)
                .padding(.horizontal, 0)
                .background(Color.appBackground)
                
            }
        }
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
