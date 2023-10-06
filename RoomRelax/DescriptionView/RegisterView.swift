//
//  RegisterView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {

        VStack(alignment: .leading) {
            ScrollView {
                ReservationNameView()
                
                InformationByerView()
                
                InformationByerView()
                
                ContentView()
                
                InformationByerView()
            }
            
            .background(
                Rectangle()
                    .fill(Color.backgroundColor())
                    //.ignoresSafeArea()
            )
            
            NavigationLink(destination: PaidView()) {
                Text("Оплатить к 198000")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(Color(.systemBlue))
                .cornerRadius(12)
            }
            .padding(.top, 8)
            .padding(.leading)
            .padding(.trailing)
        }
        .navigationTitle("Бронирование")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
