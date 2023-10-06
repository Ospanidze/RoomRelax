//
//  ReservationNameView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct ReservationNameView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("")
                .font(.system(size: 1))
                .frame(maxWidth: .infinity)
            RatingView(rating: 5, ratingName: "Превосходство")
            NameView()
        }
        .padding()
        .background(.white)
        .cornerRadius(15)
    }
}

struct ReservationNameView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationNameView()
    }
}
