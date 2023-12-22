//
//  RoomListView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct RoomListView: View {
    
    @StateObject var viewModel = RoomViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView() {
            ForEach(viewModel.rooms, id: \.id) { room in
                RoomRowView(room: room)
            }
        }
        .onAppear { 
            viewModel.getRooms()
        }
        .background(
            Rectangle()
                .fill(Color.backgroundColor())
            )
        .navigationTitle("Steigenberger Makadi")
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

struct RoomListView_Previews: PreviewProvider {
    static var previews: some View {
        RoomListView()
    }
}
