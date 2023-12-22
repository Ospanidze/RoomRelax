//
//  NameView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct NameView: View {
    
    let title: String
    let address: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .lineLimit(2)
                .font(.system(size: 22, weight: .medium))
                
            Text(address)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(Color(.systemBlue))
        }
        //.background()
        //.padding()
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView(title: "Steigenberger Makadidjasdhjkk", address: "Madinat Makadi, Safaga Road, Makadi Bay, Египет")
    }
}
