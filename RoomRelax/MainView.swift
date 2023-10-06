//
//  MainView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationView {
       
            VStack(spacing: 0) {
                ScrollView {
                    HotelView()
                    
                    DescriptionView()
                }
               
                .background(
                    Rectangle()
                        .fill(Color.backgroundColor())
                        //.ignoresSafeArea()
                )
                
                NavigationLink(destination: RoomListView()) {
                    Text("К выбору номера")
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
            .navigationTitle("Отель")
           // .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
