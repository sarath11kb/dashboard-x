//
//  DashboardRequestModel.swift
//  dashboard
//
//  Created by Admin on 14/06/23.
//

import Foundation

class DashboardRequestModel: NSObject {
    var url: String = "https://api.inopenapp.com/api/v1/dashboardNew"
    var apiKey: String = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI"
    var headers: [String: String] {
        return ["Medium": "APP",
                "Content-type": "application/json",
                "Accept-Language": "en"]
    }
    
}

extension DashboardRequestModel {
    func urlRequest() -> URLRequest? {
        var endpoint: String = url
        
        
        guard let url = URL(string: endpoint) else { return nil }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue(apiKey, forHTTPHeaderField: "Authorization")
        return request
    }
}
