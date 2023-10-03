//
//  ImageRowView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct ImageRowView: View {
    
    var body: some View {
        Image("asianSteak")
            .resizable()
            .frame(width: UIScreen.main.bounds.width - 32,height: 257)
            .cornerRadius(15)
            
    }
}

struct ImageItemView_Previews: PreviewProvider {
    static var previews: some View {
        ImageRowView()
    }
}
