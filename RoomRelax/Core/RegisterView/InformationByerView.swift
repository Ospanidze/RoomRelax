//
//  InformationByerView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct InformationByerView: View {
    
    @Binding var byer: ByerTextField
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Информация о покупателе")
                .font(.system(size: 22, weight: .medium))
                .padding(.bottom, 8)
            
            TextFieldView(text: $byer.number, title: "Номер телефона", placeholder: "+77770007700")
                .onChange(of: byer.number, perform: { newValue in
                    byer.number = newValue.formatMobileNumber()
                })
                .keyboardType(.numberPad)
            
            TextFieldView(text: $byer.email, title: "Почта", placeholder: "examplemail.000@mail.ru")
                .foregroundColor(
                    getColor()
                )
            
            
            Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                .font(.system(size: 14, weight: .regular))
            
        }
        .padding()
        .background(Color(.white))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
    
    private func getColor() -> Color {
        if !byer.email.isEmpty {
            return !byer.email.isValid() ? .redColor() : .black
        }
        
        return .black
    }
}

struct InformationByerView_Previews: PreviewProvider {
    static var previews: some View {
        InformationByerView(byer: .constant(ByerTextField()))
    }
}

struct TextFieldView: View {
    
    @Binding var text: String
    let title: String
    let placeholder: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .font(.system(size: 12, weight: .regular))
            TextField(placeholder, text: $text)
                .font(.system(size: 16, weight: .regular))
        }
        .padding(.vertical, 10)
        .padding(.horizontal)
        .background(Color.backgroundColor())
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
