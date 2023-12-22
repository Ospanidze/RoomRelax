//
//  RemoteImage.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 20.12.2023.
//

import SwiftUI

struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("asianSteak").resizable()
    }
}

struct HostelRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoaderModel()

    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear { imageLoader.load(from: urlString) }
    }
}

#Preview {
    HostelRemoteImage(urlString: "")
}
