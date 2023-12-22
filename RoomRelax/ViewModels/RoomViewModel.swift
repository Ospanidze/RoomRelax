//
//  RoomViewModel.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 20.12.2023.
//

import SwiftUI

final class RoomViewModel: ObservableObject {
    
    @Published var rooms: [Room] = []
    
    func getRooms() {
        NetworkManager.shared.fetch(Motel.self, from: Link.motel.url) { [weak self] result in
            switch result {
                case .success(let motel):
                    DispatchQueue.main.async {
                        self?.rooms = motel.rooms
                    }
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
}
