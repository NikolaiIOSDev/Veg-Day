//
//  AdditiesModel.swift
//  Veg Day
//
//  Created by Николай Федоров on 09.03.2022.
//

import Foundation
import UIKit

struct AdditiesModel {
    var name:String?
    var nameNumber:String?
    var imageCitizen:UIImage?
    var imageCitizenTwo:UIImage?
    var imageCitizenThree:UIImage?
    var classAddities:String?
    var dangerAddities:String?
    var info:String?
    
    // Инициализация
    init(name:String,imageCitizen:UIImage,nameNumber:String) {
        self.name=name
        self.nameNumber=nameNumber
        self.imageCitizen=imageCitizen
    }
    
    init(name:String,imageCitizen:UIImage,imageCitizenTwo:UIImage?,imageCitizenThree:UIImage?,classAddities:String?,dangerAddities:String?,nameNumer:String,info:String?) {
        self.name=name
        self.classAddities=classAddities
        self.dangerAddities=dangerAddities
        self.nameNumber=nameNumer
        self.imageCitizen=imageCitizen
        self.imageCitizenTwo=imageCitizenTwo
        self.imageCitizenThree=imageCitizenThree
        self.info=info
    }
}

