//
//  NetworkManager.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 20.12.2023.
//

import Foundation

enum Link {
    case hostel
    case motel
    case infoHostel
    
    var url: URL? {
        switch self {
        case .hostel:
            return URL(string: "https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473")
        case .motel:
            return URL(string: "https://run.mocky.io/v3/8b532701-709e-4194-a41c-1a903af00195")
        case .infoHostel:
            return URL(string: "https://run.mocky.io/v3/63866c74-d593-432c-af8e-f279d1a8d2ff")
        }
    }
}

enum NetworkError: Error {
    case noData
    case invalidURL
    case decodingError
}

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let cacheImage = NSCache<NSString, CachedImage>()
    
    private init() {}
    
    func fetch<T:Decodable>(_ type: T.Type, from url: URL?, completion: @escaping(Result<T, NetworkError>) -> Void) {
        
        guard let url = url else {
            completion(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                completion(.failure(.noData))
                print(error?.localizedDescription ?? "No Error description")
                return
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            do {
                let dataModel = try decoder.decode(T.self, from: data)
                completion(.success(dataModel))
            } catch {
                completion(.failure(.decodingError))
            }
        }.resume()
    }
    
    func fetchImage(from urlString: String, completion: @escaping(Result<Data, NetworkError>) -> Void) {
        
        let cacheKey = NSString(string: urlString)
        
        if let cachedImage = cacheImage.object(forKey: cacheKey) {
            completion(.success(cachedImage.data))
            return
        }
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.decodingError))
            return
        }

        let requestURL = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad, timeoutInterval: 5)
        
        guard let urlFromRequest = requestURL.url else { return }
        
        DispatchQueue.global().async {
            guard let imageData = try? Data(contentsOf: urlFromRequest) else {
                completion(.failure(.noData))
                return
            }
            
            let cachedImageData = CachedImage(data: imageData)
            self.cacheImage.setObject(cachedImageData, forKey: cacheKey)
            DispatchQueue.main.async {
                completion(.success(imageData))
            }
        }
    }
}

final class CachedImage {
    let data: Data

    init(data: Data) {
        self.data = data
    }
}
