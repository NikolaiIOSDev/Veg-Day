//
//  File.swift
//  Veg Day
//
//  Created by Николай Федоров on 20.05.2022.
//

import Foundation
import UIKit
import MapKit // Подключение фреймворка

class MapModel:NSObject,MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate:CLLocationCoordinate2D // Тип данных координат
    
    // Инициализация
    init(title:String,subtitle:String,coordinate:CLLocationCoordinate2D) {
        self.title=title
        self.subtitle=subtitle
        self.coordinate=coordinate
    }
}
