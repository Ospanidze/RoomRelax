//
//  BookingView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 21.12.2023.
//

import SwiftUI

struct BookingView: View {
    
    let titles: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(0..<titles.count, id: \.self) { index in
                HStack(alignment: .firstTextBaseline) {
                    Text(OptionField.allCases[index].rawValue)
                        .foregroundColor(.gray)
                    Spacer()
                    
                    Text(titles[index])
                        .frame(width: 200, alignment: .leading)
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
  
    
    BookingView(titles: [
        "Санкт-Петербург",
        "Египет, Хургада",
        "19.09.2023 – 27.09.2023",
        "7 ночей",
        "Steigenberger Makadi",
        "Стандартный с видом на бассейн или сад",
        "Все включено"
    ])
}
