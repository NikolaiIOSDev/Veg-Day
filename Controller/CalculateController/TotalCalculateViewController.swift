//
//  TotalCalculateViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 19.05.2022.
//

import UIKit

class TotalCalculateViewController: UIViewController {
    
    // Привязка элементов
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var backButton: UIButton!
    
    //Переменные  будут принимать данные
    var imtNumber:String?
    var imtText:String?
    var imtColor:UIColor?
    
    
    //Label принимает данные
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = imtNumber
        resultLabel.text = imtText
        view.backgroundColor = imtColor
        backButton.layer.cornerRadius=10
       
    }
    
    //Метод выхода
    @IBAction func backButtonAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
