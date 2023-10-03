//
//  RatingView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct RatingView: View {
    
    let rating: Int
    let ratingName: String
    
    var body: some View {
        HStack(spacing: 0) {
            Image(systemName: "star.fill")
            
            Text("\(rating) " + ratingName)
                .font(.system(size: 16, weight: .medium))
        }
        .foregroundColor(.orangeTextColor())
        .padding(EdgeInsets(top: 5,
                            leading: 10,
                            bottom: 5,
                            trailing: 10))
        .background(Color.orangeColor())
        .cornerRadius(5)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 5, ratingName: "Превосходно")
    }
}
