//
//  MainView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel = MainViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
           
                VStack(spacing: 0) {
                    ScrollView {
                        HotelView(hostel: viewModel.hostel ?? Hostel.getHostel())
                        
                        DescriptionView(hostel: viewModel.hostel ?? Hostel.getHostel())
                    }
                   
                    .background(
                        Rectangle()
                            .fill(Color.backgroundColor())
                            //.ignoresSafeArea()
                    )
                    
                    NavigationLink(destination: RoomListView()) {
                        Text("К выбору номера")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color(.systemBlue))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    .padding(.top, 8)
                    .padding(.leading)
                    .padding(.trailing)
                }
                .navigationTitle("Отель")
                .navigationBarTitleDisplayMode(.inline)
                .onAppear {
                    viewModel.getHostel()
                }
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
