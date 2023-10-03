//
//  PeculiarityRowView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 03.10.2023.
//

import SwiftUI

struct PeculiarityRowView: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .lineLimit(1)
            .font(.system(size: 16, weight: .medium))
            .foregroundColor(.grayTextColor())
            .padding(EdgeInsets(top: 5,
                                leading: 10,
                                bottom: 5,
                                trailing: 10))
            .background(Color.backgroundColor())
            .cornerRadius(5)
    }
}

struct PeculiaritiesRowView_Previews: PreviewProvider {
    static var previews: some View {
        PeculiarityRowView(text: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
