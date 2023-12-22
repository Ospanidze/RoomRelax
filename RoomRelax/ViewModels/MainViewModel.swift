//
//  MainViewModel.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 20.12.2023.
//

import SwiftUI

final class MainViewModel: ObservableObject {
    
    @Published var hostel: Hostel?
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    func getHostel() {
        isLoading = true
        
        NetworkManager.shared.fetch(Hostel.self, from: Link.hostel.url) { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                    case .success(let hostel):
                        self?.hostel = hostel
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
