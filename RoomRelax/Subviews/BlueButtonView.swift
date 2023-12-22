//
//  BlueButtonView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct BlueButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 48)
        .background(Color(.systemBlue))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

struct BlueButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BlueButtonView(title: "К выбору номера", action: {})
    }
}
