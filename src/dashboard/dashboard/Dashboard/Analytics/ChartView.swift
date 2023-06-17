//
//  ChartView.swift
//  dashboard
//
//  Created by Admin on 12/06/23.
//

import SwiftUI

struct ChartView: View {
    var body: some View {
        Image("graph")
            .frame(width: 328, height: 200)
            .foregroundColor(.gray)
    }
    
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
