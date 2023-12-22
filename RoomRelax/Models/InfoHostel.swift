//
//  InfoHostel.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 21.12.2023.
//

import Foundation

struct InfoHostel: Decodable {
    let id: Int
    let hotelName, hotelAdress: String
    let horating: Int
    let ratingName, departure, arrivalCountry, tourDateStart: String
    let tourDateStop: String
    let numberOfNights: Int
    let room, nutrition: String
    let tourPrice, fuelCharge, serviceCharge: Int
    
    var total: Int {
        tourPrice + fuelCharge + serviceCharge
    }
    
    static func getInfoHostel() -> InfoHostel {
        InfoHostel(
            id: 1,
            hotelName: "Лучший пятизвездочный отель в Хургаде, Египет",
            hotelAdress: "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
            horating: 4,
            ratingName: "Превосходно",
            departure: "Астана",
            arrivalCountry: "Египет, Хургада",
            tourDateStart: "19.09.2023",
            tourDateStop: "27.09.2023",
            numberOfNights: 6,
            room: "Люкс номер с видом на море",
            nutrition: "Все включено",
            tourPrice: 289400,
            fuelCharge: 9300,
            serviceCharge: 2150
        )
    }
}
