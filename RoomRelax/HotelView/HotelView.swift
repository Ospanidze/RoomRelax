//
//  HotelView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct HotelView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .firstTextBaseline, spacing: 0) {
                    ForEach(0..<3) { _ in
                        ImageRowView()
                    }
                }
            }
            
            RatingView(rating: 5, ratingName: "Превосходство")
            NameView()
            PriceView()
            
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(12)
    }
}

struct HotelView_Previews: PreviewProvider {
    static var previews: some View {
        HotelView()
    }
}
