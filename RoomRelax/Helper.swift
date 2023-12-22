//
//  Helper.swift
//  RoomRelax
//
//  Created by Айдар Оспанов on 21.12.2023.
//

import Foundation

enum OptionField: String, CaseIterable {
    case departure = "Вылет из"
    case arrivalCountry = "Страна, город"
    case date = "Даты"
    case numberOfNights = "Кол-во ночей"
    case hotel = "Отель"
    case room = "Номер"
    case nutrition = "Питание"
}

enum NameField: String, CaseIterable {
    case firstName = "Имя"
    case lastName = "Фамилия"
    case dateBirthday = "Дата рождения"
    case nationality = "Гражданство"
    case passportID = "Номер загранпаспорта"
    case validity = "Срок действия загранпаспорта"
}

enum Price: String, CaseIterable {
    case tourPrice = "Тур"
    case fuelCharge = "Топливный сбор"
    case serviceCharge = "Сервисный сбор"
    case pay = "К оплате"
}

struct ExpandableName: Identifiable {
    let id = UUID()
    var isExpanded = false
    var names = TextFieldData()
}

struct TextFieldData: Identifiable {
    let id = UUID()
    var firstName = ""
    var lastName = ""
    var dateBirthday = ""
    var nationality = ""
    var passportID = ""
    var validity = ""
}

struct ByerTextField: Identifiable {
    let id = UUID()
    var number = ""
    var email = ""
}
