//
//  Alert.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 22.12.2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    //MARK: - NetworkError Alerts
    
    static let noData = AlertItem(
        title: Text("Ошибка cервера"),
        message: Text("Данные, полученные с сервера, недействительны. Пожалуйста, свяжитесь со службой поддержки"),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidURL = AlertItem(
        title: Text("Ошибка cервера"),
        message: Text("Возникла проблема с подключением к серверу. Если проблема не исчезнет, обратитесь в службу поддержки."),
        dismissButton: .default(Text("OK"))
    )
    
    static let decodingError = AlertItem(
        title: Text("Ошибка cервера"),
        message: Text("В настоящее время невозможно выполнить ваш запрос. Проверьте свой Интернет."),
        dismissButton: .default(Text("OK"))
    )
    
    //MARK: Account
    
    static let invalidFields = AlertItem(
        title: Text("Данные не заполнены"),
        message: Text("Заполните пожалуйста данные туриста."),
        dismissButton: .default(Text("OK"))
    )
}
