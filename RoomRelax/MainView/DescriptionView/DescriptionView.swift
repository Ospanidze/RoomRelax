//
//  DescriptionView.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 02.10.2023.
//

import SwiftUI

struct DescriptionView: View {
    
    let hostel: Hostel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            VStack(alignment: .leading, spacing: 16) {
                Text("Об отеле")
                    .font(.system(size: 22, weight: .medium))
                
                CustomGridView(items: hostel.aboutTheHotel.peculiarities, columns: 2)
            }
            
            Text(hostel.aboutTheHotel.description)
                .font(.system(size: 16, weight: .regular))
            
            VStack(spacing: 0) {
                ForEach(0..<3) { _ in
                    ExplanationRowView()
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay {
                VStack(alignment: .center, spacing: 35) {
                    Group {
                        Color.grayTextColor()
                        Color.grayTextColor()
                    }
                    .frame(height: 1)
                    .padding()
                    .padding(.leading)
                    .padding(.leading)
                    
                }
            }
            
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(hostel: Hostel.getHostel())
    }
}

struct CustomGridView: View {
    
    let items: [String]
    let columns: Int
    
    private var rows: Int {
        items.count / columns
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0...rows, id: \.self) { rowIndex in
                HStack(alignment: .top) {
                    ForEach(0..<columns, id: \.self) { columnIndex in
                        if let index = getIndexFor(row: rowIndex, andColumn: columnIndex) {
                            PeculiarityRowView(text: items[index])
                        }
                    }
                }
            }
        }
    }
    
    private func getIndexFor(row: Int, andColumn column: Int) -> Int? {
        let index = row * columns + column
        return index < items.count ? index : nil
    }
}
