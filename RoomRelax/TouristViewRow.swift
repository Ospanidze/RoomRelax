//
//  TouristViewRow.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 01.10.2023.
//

import SwiftUI

struct TouristViewRow: View {
    
    @State private var isTapped = false
    
    private let numbers = [1,2,3]
    @State private var text = ""
    
    var body: some View {
        VStack() {
            HStack {
                Text("Первый турист")
                
                Spacer()
                
                Button(action: {
                    withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.5)) {
                        isTapped = isTapped ? false : true
                    }
                } ) {
                    Image(systemName: isTapped ? "chevron.up" : "chevron.down")
                        .foregroundColor(.blue)
                }
                .frame(width: 32, height: 32)
                .background(Color(.systemBlue).opacity(0.1))
                .cornerRadius(6)
            }
            .padding(.leading)
            .padding(.trailing)
            .frame(height: 58)
 
            
           //Spacer()
            
            if isTapped {
                VStack(spacing: 0) {
                    ForEach(0..<6) { _ in
                        TextView(text: $text)
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.bottom, 8)
                    }
                }
                
                //.transition(.move(edge: isTapped ? .top : .bottom))
                
            }
        }
        //.frame(height: 400)
        
        .background(Color.white)
    }
}

struct TextView: View {
    
    @Binding var text: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 52)
                .cornerRadius(10)
                .foregroundColor(Color(.systemGray6))
            TextField("Дата Рождения", text: $text)
                .padding(.leading)
        }
    }
}

struct TouristViewRow_Previews: PreviewProvider {
    static var previews: some View {
        TouristViewRow()
    }
}
