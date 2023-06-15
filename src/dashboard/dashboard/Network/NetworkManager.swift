//
//  NetworkManager.swift
//  dashboard
//
//  Created by Admin on 13/06/23.
//

import Foundation


class NetworkManager {
    static let shared: NetworkManager = NetworkManager()
    
    func sendRequest(request: DashboardRequestModel, completion: @escaping(Result<DashboardResponse?, ErrorModel>) -> Void) {
        if let request = request.urlRequest() {
            URLSession.shared.dataTask(with: request) { responseData, resp, serverError in
                DispatchQueue.main.async {
                    if let serverError = serverError {
                        print("serverError \(serverError)")
                        completion(Result.failure(ErrorModel(status: false, statusCode: 500, message: "error ", name: "some error", errors: nil)))
                        return
                    }
                    
                    guard let httpResponse = resp as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
                        
                        guard let data = responseData, let error = try? JSONDecoder().decode(ErrorModel.self, from: data) else {
                            completion(Result.failure(ErrorModel(status: false, statusCode: 602, message: "error ", name: "error decoding json", errors: nil)))
                            return
                        }
                        
                        completion(Result.failure(error))
                        return
                    }
                    
                    if let data = responseData, let responseModel = try? JSONDecoder().decode(DashboardResponse.self, from: data) {
                        completion(Result.success(responseModel))
                        return
                    } else {
                        guard let data = responseData, let error = try? JSONDecoder().decode(ErrorModel.self, from: data) else {
                            completion(Result.failure(ErrorModel(status: false, statusCode: 602, message: "error ", name: "error decoding err json", errors: nil)))
                            return
                        }
                        completion(Result.failure(error))
                    }
                    
                    
                }
                
            }.resume()
            
        }
        
    }
}



