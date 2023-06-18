//
//  LinksView.swift
//  dashboard
//
//  Created by Admin on 13/06/23.
//

import SwiftUI

struct LinksView: View {
    @StateObject var dashboardViewModel: DashboardViewModel = DashboardViewModel(message: "Links View")
    @State var linkType: LinkType = .recent
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Top Links")
                    .padding(.vertical, 6)
                    .padding(.horizontal, 16)
                    .foregroundColor(linkType == .top ? .white: .gray)
                    .background(linkType == .top ? Color.darkBluebg : .backgroundGray)
                    .cornerRadius(18)
                    .font(.figTreeMedium16)
                    .onTapGesture {
                        withAnimation {
                            linkType = .top
                        }
                    }
                
                Text("Recent Links")
                    .padding(.vertical, 6)
                    .padding(.horizontal, 16)
                    .font(.figTreeMedium16)
                    .foregroundColor(linkType == .recent ? .white: .gray)
                    .background(linkType == .recent ? Color.darkBluebg : .backgroundGray)
                    .cornerRadius(18)
                    .onTapGesture {
                        withAnimation {
                            linkType = .recent
                        }
                    }
                Spacer()
                Image("search-button")
                    .foregroundColor(Color.searchButtonBorder)
                    .padding()
                    .frame(width: 36, height: 36)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.searchButtonBorder, lineWidth: 2  )
                    )
                
                
            }
            .padding(.bottom, 28)
            switch linkType {
            case .recent:
                VStack {
                    if let linkObjects  = dashboardViewModel.responseObject?.data.recentLinks {
                        ForEach(0..<linkObjects.count, id: \.self) { index in
                            LinksCardView(linkObject: linkObjects[index] )
                        }
                        
                    }
                }
            case .top:
                VStack {
                    if let linkObjects  = dashboardViewModel.responseObject?.data.topLinks {
                        ForEach(0..<linkObjects.count, id: \.self) { index in
                            LinksCardView(linkObject: linkObjects[index] )
                        }
                        
                    }
                }
            }
            
            HStack {
                Image("link")
                Text("View all links")
                    .font(.figTreeMedium16)
                    .foregroundColor(.text)
            }
            .frame(width: 328, height: 24)
            .padding(.vertical)
            .foregroundColor(.gray)
            .overlay(
                RoundedRectangle(cornerRadius: 8).stroke(Color.searchButtonBorder, lineWidth: 2)
            )
            
            VStack(spacing: 16) {
                HStack {
                    Image("whatsApp")
                        .padding(.leading)
                    Text("Talk with us")
                        .font(.figTreeMedium16)
                        .foregroundColor(.text)
                    Spacer()
                }
                .frame(width: 328, height: 24)
                .padding(.vertical)
                .foregroundColor(.gray)
                .background(Color.whatsAppBg)
                .overlay(
                    RoundedRectangle(cornerRadius: 8).stroke(Color.whatsAppBorder, lineWidth: 2)
                )
                HStack {
                    Image("question-mark")
                        .padding(.leading)
                    Text("Frequently asked questions")
                        .font(.figTreeMedium16)
                        .foregroundColor(.text)
                    Spacer()
                }
                .frame(width: 328, height: 24)
                .padding(.vertical)
                .foregroundColor(.gray)
                .background(Color.faqBg)
                .overlay(
                    RoundedRectangle(cornerRadius: 8).stroke(Color.faqBorder, lineWidth: 2)
                )
            }
            .padding(.vertical, 30)
            
            
        }
        .padding(.vertical)
        .padding(.horizontal, 0)
        .background(.clear)
    }
    
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        LinksView()
    }
}
