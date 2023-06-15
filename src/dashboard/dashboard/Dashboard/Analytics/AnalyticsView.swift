//
//  AnalyticsView.swift
//  dashboard
//
//  Created by Admin on 12/06/23.
//

import SwiftUI

struct AnalyticsView: View {
    var body: some View {
        ScrollView{
            VStack {
                Text("Good Morning")
                    .foregroundColor(.gray)
                Text("Ajay Manwa")
                    .foregroundColor(.black)
            }
            
            ChartView()
            ScrollCardsView()
            
            
            
            HStack {
                Image(systemName: "arrow.up.forward")
                Text("View Analytics")
            }
            .frame(width: 328, height: 24)
            .padding(.vertical)
            .foregroundColor(.gray)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.black, lineWidth: 1)
            )
            
            
            
            LinksView()
            
            
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
