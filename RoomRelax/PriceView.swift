//
//  PriceView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct PriceView: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            Text("от 134 673 ₽")
                .font(.system(size: 30, weight: .semibold))
            
            
            Text("за тур с перелётом")
                .foregroundColor(.grayTextColor())
                .font(.system(size: 16, weight: .regular))
        }
        .background()
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView()
    }
}
