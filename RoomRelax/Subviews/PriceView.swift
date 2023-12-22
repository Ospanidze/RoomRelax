//
//  PriceView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct PriceView: View {
    
    let price: String
    let priceForIt: String
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            Text("\(price) ₽")
                .font(.system(size: 30, weight: .semibold))
            
            
            Text(priceForIt)
                .foregroundColor(.grayTextColor())
                .font(.system(size: 16, weight: .regular))
        }
        .background()
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(price: "23131", priceForIt: "за 7 ночей с перелётом")
    }
}
