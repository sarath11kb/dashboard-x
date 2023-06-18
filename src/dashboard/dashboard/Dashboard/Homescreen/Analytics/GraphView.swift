//
//  SwiftUIView.swift
//  dashboard
//
//  Created by Admin on 17/06/23.
//

import SwiftUI
import Charts


struct GraphView: View {
    @StateObject var dashboardViewModel: DashboardViewModel
    @State var months: [Int] = [1,3 ,5,3]
    
    var body: some View {
        VStack {
            HStack {
                Text("Overview")
                    .font(.figTreeLight14)
                    .foregroundColor(.subText)
                Spacer()
                HStack {
                    Image(systemName: "clock")
                    Text("22 Aug - 23 Sept")
                        .font(.figTreeRegular12)
                        .foregroundColor(.text)
                }
                .frame( height: 20)
                .padding(.vertical, 6)
                .padding(.horizontal, 8)
                .foregroundColor(.gray)
                .overlay(
                    RoundedRectangle(cornerRadius: 8).stroke(Color.searchButtonBorder, lineWidth: 2)
                )
            }
            Chart(dashboardViewModel.chartData[dashboardViewModel.chartData.startIndex..<dashboardViewModel.chartData.index(dashboardViewModel.chartData.startIndex, offsetBy: min(dashboardViewModel.chartData.count, 10))]) {
                LineMark(
                    x: .value("Month",$0.date),
                    y: .value("Count", $0.count)
                )
                .foregroundStyle(Color.darkBluebg)
                
            }
            .foregroundStyle(.black, .gray)
            .chartYScale(domain: 0...25)
            .frame(height: 136)
            .scrollDisabled(false)
            .chartXAxis(.hidden)
            .chartLegend(.visible)
            .chartXAxisLabel("Months")
            .foregroundColor(.darkBluebg)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8).fill(Color.appBackground).frame(width: 328))
    }
    
}
