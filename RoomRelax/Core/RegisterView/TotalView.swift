//
//  TotalView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 21.12.2023.
//

import SwiftUI

struct TotalView: View {
    
    let prices: [Int]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(0..<prices.count, id: \.self) { index in
                HStack(alignment: .firstTextBaseline) {
                    Text(Price.allCases[index].rawValue)
                        .foregroundColor(.gray)
                    Spacer()
                    
                    Text("\(prices[index]) ₽")
                        .foregroundColor(index == prices.count - 1 ? .blue : .black)
                }
            }
        }
        .font(.system(size: 16, weight: .regular))
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    TotalView(prices: [186600,
                       9300,
                       2136,
                       198036])
}
