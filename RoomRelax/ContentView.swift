//
//  ContentView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 01.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            
            VStack {
                ScrollView {
                    ForEach(0..<3) { _ in
                        TouristViewRow()
                            .cornerRadius(12)
                    }
                    
                    
                    AddButtonView()
                        .frame(height: 58)
                        .background(Color.white)
                        .cornerRadius(12)
                }
                
            }
        }
    }
}

struct AddButtonView: View {
    var body: some View {
        HStack {
            Text("Добавить туриста")
            
            Spacer()
            
            Button(action: {print("add")}) {
                Image(systemName: "plus")
                    .foregroundColor(.white)
            }
            .frame(width: 32, height: 32)
            .background(Color(.systemBlue))
            .cornerRadius(6)
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
