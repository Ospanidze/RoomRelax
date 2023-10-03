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
       
            VStack {
                ScrollView {
                    HotelView()
                    
                    DescriptionView()
                }
                
                
                BlueButtonView(title: "К выбору номера", action: {})
                    .padding(.top, 8)
                    .padding(.leading)
                    .padding(.trailing)
            }
            .background(Color.backgroundColor())
            .navigationTitle("Отель")
            //.navigationBarTitleDisplayMode(.inline)
        }
    
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
