//
//  TitleView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct TitleView: View {
    
    var body: some View {
        HStack {
            Text("Подробнее о номере")
                .font(.system(size: 16, weight: .medium))
                
            Image(systemName: "chevron.right")
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color.blueColor().opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .foregroundColor(Color(.systemBlue))
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
