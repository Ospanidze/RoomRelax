//
//  RegisterView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 06.10.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject private var viewModel = RegisterViewModel()
    @Environment(\.dismiss) var dismiss
    @FocusState var isFocused: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Color.backgroundColor()
                
                ScrollView {
                    ReservationNameView(infoHostel: viewModel.infoHostel ?? InfoHostel.getInfoHostel())
                       
                    BookingView(titles: viewModel.titles)
                    
                    InformationByerView(byer: $viewModel.byerTextField)
                        .focused($isFocused)
                    
                    TouristView(viewModel: viewModel)
                        .focused($isFocused)
                    
                    TotalView(prices: viewModel.prices)
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(height: 88)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        NavigationLink(
                            destination: PaidView(),
                            isActive: $viewModel.isNavigationActive
                        ) {
                            EmptyView()
                        }
                        .isDetailLink(false)
                        .buttonStyle(PlainButtonStyle())

                        
                        Button(action: viewModel.paidButtonTapped) {
                            Text("Оплатить к \(viewModel.infoHostel?.total ?? InfoHostel.getInfoHostel().total) ₽")
                                .foregroundColor(.white)
                        }
                        .frame(height: 48)
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemBlue))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal)
                    }
                }
                
            }
        }
        .onTapGesture {
            isFocused = false
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
        .onAppear {
            viewModel.getInfoHostel()
        }
        .navigationTitle("Бронирование")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: dismiss.callAsFunction ) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
