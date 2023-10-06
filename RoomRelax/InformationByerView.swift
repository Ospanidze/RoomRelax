//
//  InformationByerView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct InformationByerView: View {
    
    @State private var text = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Информация о покупателе")
                .font(.system(size: 22, weight: .medium))
                .padding(.bottom, 8)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Номер телефона")
                    .font(.system(size: 12, weight: .regular))
                TextField("+77017000951", text: $text)
                    .font(.system(size: 16, weight: .regular))
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.backgroundColor())
            .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Почтв")
                    .font(.system(size: 12, weight: .regular))
                TextField("+77017000951", text: $text)
                    .font(.system(size: 16, weight: .regular))
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.backgroundColor())
            .cornerRadius(10)
            
            Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                .font(.system(size: 14, weight: .regular))
            
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(12)
    }
}

struct InformationByerView_Previews: PreviewProvider {
    static var previews: some View {
        InformationByerView()
    }
}
