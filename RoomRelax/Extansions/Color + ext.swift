//
//  Color + ext.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

extension Color {
    
    static func backgroundColor() -> Color {
        let color = #colorLiteral(red: 0.964705646, green: 0.9647061229, blue: 0.9776162505, alpha: 1)
        return Color(uiColor: color)
    }
    
    static func orangeColor() -> Color {
        let color = #colorLiteral(red: 1, green: 0.7803921569, blue: 0, alpha: 0.2)
        return Color(uiColor: color)
    }
    
    static func orangeTextColor() -> Color {
        let color = #colorLiteral(red: 1, green: 0.6588235294, blue: 0, alpha: 1)
        return Color(uiColor: color)
    }
    
    static func grayTextColor() -> Color {
        let color = #colorLiteral(red: 0.5098039216, green: 0.5294117647, blue: 0.5882352941, alpha: 1)
        
        return Color(uiColor: color)
    }
    
    static func blueColor() -> Color {
        let color = #colorLiteral(red: 0.05098039216, green: 0.4470588235, blue: 1, alpha: 1)
        return Color(uiColor: color)
    }
    
    static func redColor() -> Color {
        let color = #colorLiteral(red: 0.9215686275, green: 0.3411764706, blue: 0.3411764706, alpha: 0.85)
        return Color(uiColor: color)
    }
    
    static let brandPrimary = Color("brandPrimary")
}

extension UIColor {
    static let brandPrimary = UIColor(named: "brandPrimary")
}
