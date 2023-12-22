//
//  RoomRowView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct RoomRowView: View {
    
    let room: Room
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            TabView {
                ForEach(0..<room.imageUrls.count, id: \.self) { index in
                    ZStack {
                        HostelRemoteImage(urlString: room.imageUrls[index])
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width - 32,height: 257)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            
            Text(room.name)
                .font(.system(size: 22, weight: .medium))
            
            CustomGridView(items: room.peculiarities, columns: 2)
            
            TitleView()
            
            PriceView(price: "\(room.price)", priceForIt: room.pricePer)
                .padding(.vertical, 8)
            
//            BlueButtonView(title: "Выбрать номер", action: {})
            
            NavigationLink(destination: RegisterView()) {
                Text("Выбрать номер")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(Color(.systemBlue))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
        }
        .padding()
        .background(Color(.white))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

struct RoomRowView_Previews: PreviewProvider {
    static var previews: some View {
        RoomRowView(room: Room.getRoom())
    }
}
