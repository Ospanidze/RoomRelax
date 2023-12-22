//
//  ExplanationRowView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 03.10.2023.
//

import SwiftUI

struct ExplanationRowView: View {
    var body: some View {
        HStack {
            Image(systemName: "star")
                .resizable()
                .frame(width: 24, height: 24)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Удобства")
                    .font(.system(size: 16, weight: .medium))
                
                Text("Самое необходимое")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.grayTextColor())
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        .padding()
        .background(Color.backgroundColor())
    }
}



struct ExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationRowView()
    }
}
