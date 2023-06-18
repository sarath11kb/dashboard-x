//
//  Shapes.swift
//  dashboard
//
//  Created by Admin on 17/06/23.
//

import Foundation
import SwiftUI

extension View {
    func roundedCorners(_ corners: UIRectCorner, radius: CGFloat) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    let radius: CGFloat
    let corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct UIRectangleCorner: OptionSet {
    let rawValue: Int
    
    static let topLeft = UIRectangleCorner(rawValue: 1 << 0)
    static let topRight = UIRectangleCorner(rawValue: 1 << 1)
    static let bottomLeft = UIRectangleCorner(rawValue: 1 << 2)
    static let bottomRight = UIRectangleCorner(rawValue: 1 << 3)
}
