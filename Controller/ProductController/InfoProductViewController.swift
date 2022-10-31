//
//  InfoProductViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 16.05.2022.
//

import UIKit

class InfoProductViewController: UIViewController {
    
    var infoProduct:ProductModel? // Создается переменная с типом данных ProductModel
    
    // Происходит связь с графическими элементами
    @IBOutlet var infProdImage: UIImageView!
    @IBOutlet var infProdNameLabel: UILabel!
    @IBOutlet var infProdVitaminLabel: UILabel!
    @IBOutlet var infProdCalorLabel: UILabel!
    @IBOutlet var infProdTextView: UITextView!
    
    // В данном методе мы принимаем данные, которые передаем в данный класс
    override func viewDidLoad() {
        super.viewDidLoad()
        // Округляем изображение
        infProdImage.layer.cornerRadius=infProdImage.frame.size.width / 10
        //Принимаем данные на графические элементы
        infProdImage.clipsToBounds=true
        infProdImage.image=infoProduct?.nameImage
        infProdNameLabel.text=infoProduct?.nameProduct
        infProdVitaminLabel.text=infoProduct?.vitamin
        infProdCalorLabel.text=infoProduct?.calor
        infProdTextView.text=infoProduct?.info

  
    }
}
