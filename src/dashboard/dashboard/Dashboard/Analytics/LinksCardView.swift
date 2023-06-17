//
//  LinksCardView.swift
//  dashboard
//
//  Created by Admin on 15/06/23.
//

import SwiftUI

struct LinksCardView: View {
    @State var  linkObject: Link
    
    init(linkObject: Link) {
        self.linkObject = linkObject
    }
    
    
    var body: some View {
        VStack {
            HStack {
                if let imgUrl = URL(string: linkObject.originalImage) {
                    AsyncImage(url: imgUrl) { img in
                        img
                            .resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 48, height: 48)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 5)


                }
                VStack (alignment: .leading, spacing: 2){
                    Text(linkObject.title)
                        .font(.figTreeRegular14)
                        .fontWeight(.regular)
                        .lineLimit(1)
                    Text(linkObject.createdAt.getDateFormat)
                        .font(.figTreeLight12)
                        .foregroundColor(.subText)
                        .lineLimit(1)
                }
                Spacer()
                VStack(alignment: .center, spacing: 2) {
                    Text("\(linkObject.totalClicks)")
                        .font(.figTreeRegular14)
                        
                    Text("Clicks")
                        .font(.figTreeLight12)
                        .foregroundColor(.subText)
                        .fontWeight(.ultraLight)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: 40)
                
            }
            .padding(.horizontal, 12)
            .frame(height: 76)
            
            HStack {
                Text(linkObject.webLink)
                    .onTapGesture {
                        if let url = URL(string: linkObject.webLink) {
                            UIApplication.shared.open(url)
                        }
                        
                    }
                    .font(.figTreeRegular14)
                    .lineLimit(1)
                Spacer()
                Image("copy")
                    .frame(width: 11.5, height: 14.25)
                    .padding(1)
                    .onTapGesture {
                        if let url = URL(string: linkObject.webLink) {
                            UIPasteboard.general.url = url
                        }
                    }
                
            }
            .padding()
            .frame(height: 40)
            .foregroundColor(.blue)
            .background(Rectangle().fill(Color.backgroundBlue))
        }
        .frame( height: 120)
        .foregroundColor(.text)
        .background(Color.primary)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

//struct LinksCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        LinksCardView()
//    }
//}
