//
//  ReservationNameView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct ReservationNameView: View {
    
    let infoHostel: InfoHostel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                RatingView(rating: infoHostel.horating, ratingName: infoHostel.ratingName)
                Spacer(minLength: 16)
            }
            .padding(.horizontal)
            
            NameView(title: infoHostel.hotelName, address: infoHostel.hotelAdress)
                .padding(.horizontal)
        }
        .frame(width: UIScreen.main.bounds.width)
        .padding(.vertical)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct ReservationNameView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationNameView(infoHostel: InfoHostel.getInfoHostel())
    }
}
