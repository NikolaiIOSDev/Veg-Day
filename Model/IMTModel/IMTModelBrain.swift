//
//  IMTModelBrain.swift
//  Veg Day
//
//  Created by Николай Федоров on 19.05.2022.
//

import Foundation
import UIKit

struct IMTModelBrain {
    var imt: IMTModel? // Создаем переменную, которая будет принимать значения
    
    // Меняем тип данных числа Int на String, чтобы записать значения в Label
    func imtNumber() -> String {
        let imtTenDot = String(format: "%.1f", imt?.number ?? 0.0)
        return imtTenDot
    }
    
    // Производим проверку
    func imtText() -> String {
        return imt?.text ?? "Рекомендации отсутствуют"
    }
    // Производим проверку
    func imtColor() -> UIColor {
        return imt?.color ?? #colorLiteral(red: 0, green: 0.8387745023, blue: 0, alpha: 1)
    }
    
    //Реализация калькулятор через оператор управления
    mutating func calculateIMT(growth: Float, kg: Float) {
        let imtNumber = kg / (growth * growth)

        if imtNumber==0.0{
           imt = IMTModel(number: imtNumber, text: "Информация отсутствует!", color: #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
        } else if imtNumber < 18.5 {
            imt = IMTModel(number: imtNumber, text:"Нужно употреблять больше пищи!", color: #colorLiteral(red: 0.6177863479, green: 0.9706671834, blue: 0.5312363505, alpha: 1))
        } else if imtNumber < 24.9 {
            imt = IMTModel(number: imtNumber, text: "Вес в норме!", color: #colorLiteral(red: 0, green: 0.9749591947, blue: 0.03327115253, alpha: 1))
        } else {
            imt = IMTModel(number: imtNumber, text: "Нужно употреблять меньше пищи!", color: #colorLiteral(red: 0, green: 0.608377099, blue: 0, alpha: 1))
        }
    }
}
