//
//  RoomRowView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct RoomRowView: View {
    
    private let peculiarities = ["3-я линия", "Платный Wi-Fi в фойе", "30 км до аэропорта"]
    
    private let columns = [
        GridItem(.adaptive(minimum: 100)),
        //GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0..<3) { _ in
                        ImageRowView()
                    }
                }
            }
            Text("Стандартный с видом на бассейн или сад")
                .font(.system(size: 22, weight: .medium))
           
            
            LazyVGrid(columns: columns,  alignment: .leading) {
                ForEach(peculiarities, id: \.self) { peculiarty in
                    PeculiarityRowView(text: peculiarty)
                }
            }
            
            
            TitleView()
            PriceView()
                .padding(.vertical, 8)
            
//            BlueButtonView(title: "Выбрать номер", action: {})
            
            NavigationLink(destination: RegisterView()) {
                Text("Выбрать номер")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(Color(.systemBlue))
                .cornerRadius(12)
            }
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(12)
    }
}

struct RoomRowView_Previews: PreviewProvider {
    static var previews: some View {
        RoomRowView()
    }
}
