//
//  RoomListView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct RoomListView: View {
    var body: some View {
        ScrollView() {
            ForEach(1..<3) { _ in
                RoomRowView()
            }
        }
        .background(
            Rectangle()
                .fill(Color.backgroundColor())
            )
        .navigationTitle("Steigenberger Makadi")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RoomListView_Previews: PreviewProvider {
    static var previews: some View {
        RoomListView()
    }
}
