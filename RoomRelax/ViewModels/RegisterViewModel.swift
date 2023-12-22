//
//  RegisterViewModel.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 21.12.2023.
//

import SwiftUI

final class RegisterViewModel: ObservableObject {
    
    @Published var infoHostel: InfoHostel?
    @Published var titles: [String] = []
    @Published var prices: [Int] = []
    
    @Published var expandableNames: [ExpandableName] = [ExpandableName(isExpanded: true)]
    @Published var byerTextField = ByerTextField()
    
    @Published var isNavigationActive = false
    @Published var showAlert = false
    
    @Published var alertItem: AlertItem?
    
    func paidButtonTapped() {
        if authFields() && byerFields() {
            isNavigationActive = true
        } else {
            alertItem = AlertContext.invalidFields
        }
    }

    
    func addsExpandableNames() {
        withAnimation {
            expandableNames.append(ExpandableName())
        }
    }
    
    func getInfoHostel() {
        NetworkManager.shared.fetch(InfoHostel.self, from: Link.infoHostel.url) { [weak self] result in
            switch result {
                case .success(let infoHostel):
                    DispatchQueue.main.async {
                        self?.infoHostel = infoHostel
                        self?.titles = [infoHostel.departure, infoHostel.arrivalCountry, "\(infoHostel.tourDateStart) - \(infoHostel.tourDateStop)", "\(infoHostel.numberOfNights)", infoHostel.hotelName, infoHostel.room, infoHostel.nutrition]
                        self?.prices = [infoHostel.tourPrice, infoHostel.fuelCharge, infoHostel.serviceCharge, infoHostel.total]
                    }
                case .failure(let error):
                    print(error)
            }
        }
    }
    
    private func byerFields() -> Bool {
       if byerTextField.email == ""
            || byerTextField.number == "" {
           return false
       }
        return true
    }
    
    private func authFields() -> Bool {
        guard !expandableNames.isEmpty else { return true}
        
        let tourist = expandableNames[0].names
        
        if tourist.firstName == ""
            || tourist.lastName == ""
            || tourist.dateBirthday == ""
            || tourist.nationality == ""
            || tourist.passportID == ""
            || tourist.validity == "" {
            return false
        }
        return true
    }
    
}
