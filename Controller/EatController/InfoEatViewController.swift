//
//  InfoEatViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 07.03.2022.
//

import UIKit // Подключение фреймворка

class InfoEatViewController: UIViewController {
        
    var infoEat:EatModel? // Создается переменная с типом данных EatModel
    
    
    // Происходит связь с графическими элементами
    @IBOutlet var infEatImage: UIImageView!
    @IBOutlet var infEatNameLabel: UILabel!
    @IBOutlet var infEatTimeLabel: UILabel!
    @IBOutlet var infEatLevelLabel: UILabel!
    @IBOutlet var infEatIngredientTextView: UITextView!
    @IBOutlet var infEatRecipeTextView: UITextView!
    
    // В данном методе мы принимаем данные, которые передаем в данный класс
    override func viewDidLoad() {
        super.viewDidLoad()
        infEatImage.image=infoEat?.image
        infEatNameLabel.text=infoEat?.name
        infEatTimeLabel.text=infoEat?.timePrepar
        infEatLevelLabel.text=infoEat?.level
        infEatIngredientTextView.text=infoEat?.ingredient
        infEatRecipeTextView.text=infoEat?.recipe
        
        // Округляем изображение
        infEatImage.layer.cornerRadius=infEatImage.frame.size.width / 10

    }
}
