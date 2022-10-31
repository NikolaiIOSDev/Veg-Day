//
//  InfoAppViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 19.05.2022.
//

import UIKit

class InfoAppViewController: UIViewController {

    // Объявление переменных для настройки дополнительных свойств
    @IBOutlet var infAppTextView: UITextView!
    @IBOutlet var contactInfDevelop: UIButton!
    
    // Переопределение метода родительского класса
    override func viewDidLoad() {
        super.viewDidLoad()

        contactInfDevelop.layer.cornerRadius=10
        infAppTextView.isEditable=false
       

    }
    //Метод вызова всплывающего окна
    @IBAction func contactInfDevelopAction(_ sender: UIButton) {
        let allert=UIAlertController(title: "Контактная информация", message: "Создатель                                         Федоров Николай Анатольевич          nickolayk-fedorov@mail.ru", preferredStyle: .alert)
         
         let allertAction=UIAlertAction(title: "OK", style: .cancel, handler: nil)
         
         allert.addAction(allertAction)
         present(allert, animated: true, completion: nil)
    }
}
