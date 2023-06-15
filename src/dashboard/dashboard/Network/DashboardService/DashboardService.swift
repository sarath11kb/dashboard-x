//
//  DashboardService.swift
//  dashboard
//
//  Created by Admin on 14/06/23.
//

import Foundation


class DashboardService {
    
    static func getDashboardData(request: DashboardRequestModel, completion: @escaping(DashboardResponse?, Error?) -> Void) {
        NetworkManager.shared.sendRequest(request: DashboardRequestModel()) { result in
            switch result {
            case .success(let success):
                print("succeeded api call")
                completion(success, nil)
            case .failure(let failure):
                print("failed api call, \(failure)")
                completion(nil, failure)
            }
        }
    }
    
}
