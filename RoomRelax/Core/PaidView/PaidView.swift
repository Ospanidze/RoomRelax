//
//  PaidView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct PaidView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.presentationMode) var presentationMode
    
    private let number = Int.random(in: 100_000..<199_999)
    
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack(alignment: .center, spacing: 20) {
                ZStack {
                    Circle()
                        .frame(width: 94)
                        .foregroundColor(.backgroundColor())
                    
                    Image("party")
                }
                
                Text("Ваш заказ принят в работу")
                    .font(.system(size: 22, weight: .medium))
                
                Text("Подтверждение заказа №\(number.formatted()) может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.grayTextColor())
                    .multilineTextAlignment(.center)
            }
            .padding()
            
            Spacer()
            
            VStack {
                Divider()
                
                NavigationLink(destination: MainView().navigationBarBackButtonHidden(true)) {
                    Text("Супер!")
                        .foregroundColor(.white)
                }
                .frame(height: 48)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal)
            }
            
        }
        .navigationTitle("Заказ оплачен")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: dismiss.callAsFunction ) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct PaidView_Previews: PreviewProvider {
    static var previews: some View {
        PaidView()
    }
}
