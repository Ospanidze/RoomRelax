//
//  TouristView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 01.10.2023.
//

import SwiftUI

struct TouristView: View {
    
    @ObservedObject var viewModel: RegisterViewModel
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            VStack {
                ScrollView {
                    ForEach(0..<viewModel.expandableNames.count, id: \.self) { index in
                        TouristViewRow(index: index, isTapped: $viewModel.expandableNames[index].isExpanded, textFieldData: $viewModel.expandableNames[index].names)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    
                    
                    AddButtonView(action: {viewModel.addsExpandableNames()})
                        .frame(height: 58)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                
            }
        }
    }
}

struct AddButtonView: View {
    
    let action: () -> Void
    
    var body: some View {
        HStack {
            Text("Добавить туриста")
            
            Spacer()
            
            Button(action: action ) {
                Image(systemName: "plus")
                    .foregroundColor(.white)
            }
            .frame(width: 32, height: 32)
            .background(Color(.systemBlue))
            .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TouristView(viewModel: RegisterViewModel())
    }
}
