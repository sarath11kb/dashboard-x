//
//  AnalyticsCardView.swift
//  dashboard
//
//  Created by Admin on 17/06/23.
//

import SwiftUI

struct AnalyticsCardView: View {
    @State var heading: String
    @State var subHeading: String
    @State var imageSource: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageSource)
                .frame(width: 32, height: 32)
                .padding(.bottom, 16)
                .padding(.top, 12)
                .padding(.horizontal, 8)
            Text(heading)
                .font(.figTreeMedium16)
                .padding(.bottom, 4)
                .padding(.horizontal, 12)
            Text(subHeading)
                .font(.figTreeLight14)
                .foregroundColor(.subText)
                .padding(.horizontal, 12)
        }
        .foregroundColor(Color.text)
        .frame(width: 120, height: 120)
        .background(RoundedRectangle(cornerRadius: 8).fill(.white))
    }
}

//struct AnalyticsCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        AnalyticsCardView()
//    }
//}
