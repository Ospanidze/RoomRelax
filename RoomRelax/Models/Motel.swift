//
//  Motel.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 20.12.2023.
//

struct Motel: Decodable {
    let rooms: [Room]
}

struct Room: Decodable {
    let id: Int
    let name: String
    let price: Int
    let pricePer: String
    let peculiarities: [String]
    let imageUrls: [String]
    
    static func getRoom() -> Room {
        Room(id: 1,
             name: "Hotel",
             price: 213131,
             pricePer: "sadasd",
             peculiarities: [],
             imageUrls: [])
    }
}
