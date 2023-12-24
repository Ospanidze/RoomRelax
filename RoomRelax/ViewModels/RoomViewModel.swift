//
//  RoomViewModel.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 20.12.2023.
//

import SwiftUI

final class RoomViewModel: ObservableObject {
    
    @Published var rooms: [Room] = []
    @Published var alertItem: AlertItem?
    
    func getRooms() {
        NetworkManager.shared.fetch(Motel.self, from: Link.motel.url) { [weak self] result in
            DispatchQueue.main.async {
               
                switch result {
                    case .success(let motel):
                        self?.rooms = motel.rooms
                    case .failure(let error):
                        switch error {
                        case .invalidURL:
                            self?.alertItem = AlertContext.invalidURL
                        case .noData:
                            self?.alertItem = AlertContext.noData
                        case .decodingError:
                            self?.alertItem = AlertContext.decodingError
                        }
                }
            }
        }
    }
}
