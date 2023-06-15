//
//  LinksView.swift
//  dashboard
//
//  Created by Admin on 13/06/23.
//

import SwiftUI

struct LinksView: View {
    @State var linkType: LinkType = .recent
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Top Links")
                    .padding()
                    .foregroundColor(linkType == .top ? .white: .gray)
                    .background(linkType == .top ? .blue: .white)
                    .cornerRadius(18)
            
                    .onTapGesture {
                        withAnimation {
                            linkType = .top
                        }
                    }
                
                Text("Recent Links")
                    .padding()
                    .foregroundColor(linkType == .recent ? .white: .gray)
                    .background(linkType == .recent ? .blue: .white)
                    .cornerRadius(18)
                    .onTapGesture {
                        withAnimation {
                            linkType = .recent
                        }
                    }
                Spacer()
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding()
                    .frame(width: 36, height: 36)
                    .background( RoundedRectangle(cornerRadius: 8).fill(.clear))
                    
                
            }
            switch linkType {
            case .recent:
                VStack {
                    Text ("Recent")
                }
            case .top:
                VStack {
                    Text ("Top Links")
                }
            }
        }
        .padding()
        }
 
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        LinksView()
    }
}
