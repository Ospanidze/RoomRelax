//
//  DescriptionView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct DescriptionView: View {
    
    private let columns = [
        GridItem(.adaptive(minimum: 100)),
        //GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            VStack(alignment: .leading, spacing: 16) {
                Text("Об отеле")
                    .font(.system(size: 22, weight: .medium))
                
                LazyVGrid(columns: columns,  alignment: .leading) {
                    ForEach(0..<4) { _ in
                        PeculiarityRowView(text: "aadfadjjkljlljl;k;jkj;jk;ljljkkj;jkjl;khk")
                    }
                }
                
            }
            
            Text("Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!")
                .font(.system(size: 16, weight: .regular))
            
            VStack(spacing: 0) {
                ForEach(0..<3) { _ in
                    ExplanationRowView()
                }
            }
            .cornerRadius(15)
            .overlay {
                VStack(alignment: .center, spacing: 35) {
                    Group {
                        Color.grayTextColor()
                        Color.grayTextColor()
                    }
                    .frame(height: 1)
                    .padding()
                    .padding(.leading)
                    .padding(.leading)
                    
                }
            }
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
