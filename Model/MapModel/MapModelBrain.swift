//
//  MapModelBrain.swift
//  Veg Day
//
//  Created by Николай Федоров on 20.05.2022.
//

import Foundation
import UIKit
import MapKit // Подключение фреймворка

struct MapModelBrain {
    // Объявление массива, куда будут добавлена информация о заведениях и их расположение
    var allPosition=[MapModel]()
    // Метод создания обьектов
    mutating func addPosition(){
        let positionOne=MapModel(title: "Vegan Day", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.789827, longitude: 49.114144))
        
        let positionTwo=MapModel(title: "Green Life", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.788692, longitude: 49.121200))
        
        let positionThree=MapModel(title: "Соль", subtitle: "Кафе (имеются веганские позиции)", coordinate: CLLocationCoordinate2D(latitude: 55.791233, longitude: 49.115792))
        
        let positionFour=MapModel(title: "Govindas", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.822701, longitude: 49.154016))
        
        let positionFive=MapModel(title: "Малабар", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.799492, longitude: 49.128387))
        
        let positionSix=MapModel(title: "Джаганнат", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.762227, longitude: 37.622208))
        
        let positionSeven=MapModel(title: "Джаганнат", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.758711, longitude: 37.657152))
        
        let positionEight=MapModel(title: "Джаганнат", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.774907, longitude: 37.582906))
        
        let positionNine=MapModel(title: "Джаганнат", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.762227, longitude: 37.622208))
        
        let positionTen=MapModel(title: "Джаганнат", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.757384, longitude: 37.633706))
        
        let positionEleven=MapModel(title: "Зеленый Лис", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.772887, longitude: 37.628640))
        
        let positionTwelve=MapModel(title: "Fresh", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.761958, longitude: 37.613692))
        
        let positionThirteen=MapModel(title: "Авокадо", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.757891, longitude: 37.612407))
        
        let positionFourteen=MapModel(title: "Fruits&Veges", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.752708, longitude: 37.668893))
        
        let positionFiveteen=MapModel(title: "МОХ", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.752176, longitude: 37.668651))
        
        let positionSixteen=MapModel(title: "Falafel Bro", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.771566, longitude: 37.598378))
        
        let positionSeventeen=MapModel(title: "Prasad", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.775565, longitude: 37.608050))
        
        let positionEighteen=MapModel(title: "Авокадо", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.760915, longitude: 37.643489))
        
        let positionNineteen=MapModel(title: "Скатерть-Самобранка", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.724094, longitude: 37.621390))
        
        let positionTwenty=MapModel(title: "Veганутые", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.780218, longitude: 37.593084))

        let positionTwentyOne=MapModel(title: "MISSION", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.770482, longitude: 37.670780))
        
        let positionTwentyTwo=MapModel(title: "Veggie Box", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.925232, longitude: 30.359400))
        
        let positionTwentyThree=MapModel(title: "Veганутые", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 55.780218, longitude: 37.593084))
        
        let positionTwentyFour=MapModel(title: "Hood street food", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.957169, longitude: 30.311161))
        
        let positionTwentyFive=MapModel(title: "Vegan-restaurant Healthy Conscience", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.924614, longitude: 30.348585))
        
        let positionTwentySix=MapModel(title: "Я ЛЮБЛЮ ТЕБЯ", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.928158, longitude: 30.312481))
        
        let positionTwentySeven=MapModel(title: "Прекрасная Зелёная", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.939825, longitude: 30.344812))
        
        let positionTwentyEight=MapModel(title: "Ботаника", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.942200, longitude: 30.341308))
        
        let positionTwentyNine=MapModel(title: "Fika", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.968660, longitude: 30.317764))
        
        let positionThirty=MapModel(title: "ZEN BURGER", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.929515, longitude: 30.314449))
        
        let positionThirtyOne=MapModel(title: "Ауровилль", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.936417, longitude: 30.362760))
        
        let positionThirtyTwo=MapModel(title: "RA Family", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.927658, longitude: 30.350453))

        let positionThirtyThree=MapModel(title: "Shambala Bar", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.929475, longitude: 30.312742))

        let positionThirtyFour=MapModel(title: "VEGA", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.942962, longitude: 30.347264))

        let positionThirtyFive=MapModel(title: "Vegan Pyramid", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.924722, longitude: 30.317117))
        
        let positionThirtySix=MapModel(title: "Лаор", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.928577, longitude: 30.302016))

        let positionThirtySeven=MapModel(title: "Ешь Фреш", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.927563, longitude: 30.360613))

        let positionThirtyEight=MapModel(title: "Go Vegan", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.926693, longitude: 30.344426))

        let positionThirtyNine=MapModel(title: "GoVegan", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.939113, longitude: 30.347875))

        let positionFourty=MapModel(title: "Вегетарианская Пирамида", subtitle: "Кафе", coordinate: CLLocationCoordinate2D(latitude: 59.924722, longitude: 30.317117))

        // Добавление объектов в массив
       allPosition=[positionOne,positionTwo, positionThree,positionFour,positionFive,positionSix,positionSeven,positionEight,positionNine,positionTen,positionEleven,positionTwelve,positionThirteen,positionFourteen,positionFiveteen,positionSixteen,positionSeventeen,positionEighteen,positionNineteen,positionTwenty,positionTwentyOne,positionTwentyTwo,positionTwentyThree,positionTwentyFour,positionTwentyFive,positionTwentySix,positionTwentySeven,positionTwentyEight,positionTwentyNine,positionThirty,positionThirtyOne,positionThirtyTwo,positionThirtyThree,positionThirtyFour,positionThirtyFive,positionThirtySix,positionThirtySeven,positionThirtyEight,positionThirtyNine,positionFourty]
        
        
    }
    // Инициализация
    init() {
        addPosition()
    }
    
}
