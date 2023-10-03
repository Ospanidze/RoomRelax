//
//  NameView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct NameView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Steigenberger Makadidjasdhjkk")
                .lineLimit(2)
                .font(.system(size: 22, weight: .medium))
                
            
            Text("Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(Color(.systemBlue))
        }
        .background()
        //.padding()
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
    }
}
