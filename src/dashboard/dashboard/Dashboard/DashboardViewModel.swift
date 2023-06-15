//
//  DashboardViewModel.swift
//  dashboard
//
//  Created by Admin on 14/06/23.
//

import Foundation


class DashboardViewModel: ObservableObject {
    var message: String = ""
    var dashboardService = DashboardService()
    @Published var responseObject: DashboardResponse?
    
    init(message: String) {
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
                }
                print("success")
            }
        }
    }
}