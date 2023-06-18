//
//  BottomTabCardView.swift
//  dashboard
//
//  Created by Admin on 17/06/23.
//

import SwiftUI

struct BottomTabCardView: View {
    @State var image: String
    @State var title: String
    @State var isSelected: Bool
    var body: some View {
        VStack {
            Image(image)
                .frame(width: 20, height: 20)
            Text(title)
                .font(.figTreeRegular11)
        }
        .foregroundColor(isSelected ? Color.text : Color.subText)
        .frame(width: 60,height: 77)
    }
}
