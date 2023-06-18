//
//  Strings.swift
//  dashboard
//
//  Created by Admin on 16/06/23.
//

import Foundation


extension String {
    
    var getDateFormat: String {
        let inputDateString = self
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        
        if let date = dateFormatter.date(from: inputDateString) {
            dateFormatter.dateFormat = "dd MMM yyyy"
            let formattedDateString = dateFormatter.string(from: date)
            return formattedDateString
        }
        return "-"
    }
}
