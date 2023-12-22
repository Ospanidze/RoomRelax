//
//  HotelView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct HotelView: View {
    
    let hostel: Hostel
    
    @State private var currentIndex = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            TabView {
                ForEach(hostel.imageUrls, id: \.self) { imageURL in
                    ZStack {
                        HostelRemoteImage(urlString: imageURL)
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width - 32,height: 257)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            
            RatingView(rating: hostel.rating, ratingName: hostel.ratingName)
            NameView(title: hostel.name, address: hostel.adress)
            PriceView(price: "от \(hostel.minimalPrice)", priceForIt: hostel.priceForIt)
            
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(12)
    }
}

struct HotelView_Previews: PreviewProvider {
    static var previews: some View {
        HotelView(hostel: Hostel.getHostel())
    }
}
