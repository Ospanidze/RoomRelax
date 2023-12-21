//
//  Hostel.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 20.12.2023.
//

struct Hostel: Decodable {
    let id: Int
    let name, adress: String
    let minimalPrice: Int
    let priceForIt: String
    let rating: Int
    let ratingName: String
    let imageUrls: [String]
    let aboutTheHotel: AboutTheHotel

//    enum CodingKeys: String, CodingKey {
//        case id, name, adress
//        case minimalPrice = "minimal_price"
//        case priceForIt = "price_for_it"
//        case rating
//        case ratingName = "rating_name"
//        case imageUrls = "image_urls"
//        case aboutTheHotel = "about_the_hotel"
//    }
    
    static func getHostel() -> Hostel {
        Hostel(id: 1,
               name: "Makfsgldadf",
               adress: "Eurasian",
               minimalPrice: 12321,
               priceForIt: "sdad",
               rating: 5,
               ratingName: "Превосходно",
               imageUrls: ["asdad", "asdsa", "saa"],
               aboutTheHotel: AboutTheHotel(description: "", peculiarities: ["3-я линия", "Платный Wi-Fi в фойе", "30 км до аэропорта", "1 км до пляжа"])
        )
    }
}

// MARK: - AboutTheHotel
struct AboutTheHotel: Decodable {
    let description: String
    let peculiarities: [String]
}
