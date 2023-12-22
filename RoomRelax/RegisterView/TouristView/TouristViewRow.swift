//
//  TouristViewRow.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 01.10.2023.
//

import SwiftUI

struct TouristViewRow: View {
    
    let index: Int
    @Binding var isTapped: Bool
    
    @Binding var textFieldData: TextFieldData
    
    var body: some View {
        VStack() {
            HStack {
                Text("\(index.convertStringValue()) турист" )
                
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
                .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            .padding(.leading)
            .padding(.trailing)
            .frame(height: 58)
 
            
           //Spacer()
            
            if isTapped {
                VStack(spacing: 0) {
                    TextFieldView(text: $textFieldData.firstName, title: "Имя", placeholder: "Имя")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                    
                    TextFieldView(text: $textFieldData.lastName, title: "Фамилия", placeholder: "Фамилия")
                        .padding(.horizontal)
                        .padding(.bottom, 8)
                    
                    
                    TextView(text: $textFieldData.dateBirthday, placeholder: "Дата Рождения")
                        .padding(.horizontal)
                        .padding(.bottom, 8)
                    
                    TextView(text: $textFieldData.nationality, placeholder: "Гражданство")
                        .padding(.horizontal)
                        .padding(.bottom, 8)
                    
                    TextView(text: $textFieldData.passportID, placeholder: "Номер загранпаспорта")
                        .padding(.horizontal)
                        .padding(.bottom, 8)
                    
                    TextView(text: $textFieldData.validity, placeholder: "Срок действия загранпаспорта")
                        .padding(.horizontal)
                        .padding(.bottom, 8)
                }
            }
        }
        .background(Color.white)
    }
}

struct TextView: View {
    
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 52)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundColor(Color(.systemGray6))
            TextField(placeholder, text: $text)
                .padding(.leading)
        }
    }
}

struct TouristViewRow_Previews: PreviewProvider {
    static var previews: some View {
        TouristViewRow(index: 0, isTapped: .constant(true), textFieldData: .constant(.init()))
    }
}
