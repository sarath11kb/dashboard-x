//
//  DateTime.swift
//  dashboard
//
//  Created by Admin on 17/06/23.
//

import Foundation
import SwiftUI

extension Date {
    
    static func getGreeting() -> String {
        let currentTime = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: currentTime)
        let greeting: String
        
        if hour < 12 {
            greeting = "Good morning"
        } else if hour < 17 {
            greeting = "Good afternoon"
        } else {
            greeting = "Good evening"
        }
        
        return greeting
    }
}
