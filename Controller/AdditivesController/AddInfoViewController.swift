//
//  AddInfoViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 16.05.2022.
//

import UIKit // Подключение фреймворка

class AddInfoViewController: UIViewController {

    var infoAddit:AdditiesModel? // Создается переменная с типом данных AdditiesModel
    
    // Происходит связь с графическими элементами
    @IBOutlet var eNameLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dangerLabel: UILabel!
    @IBOutlet var classLabel: UILabel!
    @IBOutlet var fullInfoLabel: UITextView!
    @IBOutlet var imageCitizhen: UIImageView!
    @IBOutlet var imageCitizenTwo: UIImageView!
    @IBOutlet var imageCitizhenThree: UIImageView!
    
    // В данном методе мы принимаем данные, которые передаем в данный класс
    override func viewDidLoad() {
        super.viewDidLoad()
        eNameLabel.text=infoAddit?.nameNumber
        nameLabel.text=infoAddit?.name
        dangerLabel.text=infoAddit?.dangerAddities
        classLabel.text=infoAddit?.classAddities
        fullInfoLabel.text=infoAddit?.info
        imageCitizhen.image=infoAddit?.imageCitizen
        imageCitizenTwo.image=infoAddit?.imageCitizenTwo
        imageCitizhenThree.image=infoAddit?.imageCitizenThree
    }
}
