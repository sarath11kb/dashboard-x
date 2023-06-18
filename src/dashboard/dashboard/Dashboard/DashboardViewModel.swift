//
//  DashboardViewModel.swift
//  dashboard
//
//  Created by Admin on 14/06/23.
//

import Foundation

class DashboardViewModel: ObservableObject {
    @Published var responseObject: DashboardResponse?
    var message: String = ""
    @Published var chartData: [ChartData] = []
    
    init(message: String = "") {
        self.message = message
    }
}

extension DashboardViewModel {
    func fetchData() {
        DashboardService.getDashboardData(request: DashboardRequestModel()) { res, err in
            if let _ = err {
                print("err calling api")
            }
            
            if let resp = res {
                DispatchQueue.main.async {
                    self.responseObject = resp
                    self.getGraphPlotPoints()
                }
                print("success")
            }
        }
    }
    
    func getGraphPlotPoints() {
        if let graphMap = self.responseObject?.data.overallURLChart {
            self.chartData = []
            for key in graphMap.keys {
                if let count = graphMap[key] {
                    self.chartData.append(.init(date: key, count: count))
                }
            }
        }
    }
    
}
