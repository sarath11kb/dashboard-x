//
//  ScrollCardsView.swift
//  dashboard
//
//  Created by Admin on 12/06/23.
//

import SwiftUI

struct ScrollCardsView: View {
    var cardNums: Int = 4
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<cardNums, id: \.self) { i in
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 120, height: 120)
                        .foregroundColor(.blue)
                    
                }
            }
            .padding(.vertical, 20)
            
        }
    }
}

struct ScrollCardsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollCardsView()
    }
}
