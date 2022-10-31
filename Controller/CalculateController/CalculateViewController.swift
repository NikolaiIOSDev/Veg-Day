//
//  CalculateViewController.swift
//  Veg Day
//
//  Created by Николай Федоров on 19.05.2022.
//

import UIKit

class CalculateViewController: UIViewController {

    // Делаем привязку переменных раскадровкой
    @IBOutlet var growthLabel: UILabel!
    @IBOutlet var growthSlider: UISlider!
    
    @IBOutlet var kgLabel: UILabel!
    @IBOutlet var kgSlider: UISlider!
    
    @IBOutlet var calculateButton: UIButton!
    var imtModelBrain = IMTModelBrain()

    // Переопределение метода родительского класса
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButton.layer.cornerRadius=10
    
    }
    
    // Меняет состояние слайдера
    @IBAction func growthSliderAction(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        growthLabel.text = "\(height)м"
    }
    
    // Меняет состояние слайдера
    @IBAction func kgSliderAction(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        kgLabel.text = "\(weight)кг"
    }
    // Производит рассчет данных
    @IBAction func calculateIMT(_ sender: UIButton) {
        let growth = growthSlider.value
        let kg = kgSlider.value

        imtModelBrain.calculateIMT(growth: growth, kg: kg)
        performSegue(withIdentifier: "totalIMT", sender: self)
    }
    
    //Передача данных  следующему  контроллеру
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "totalIMT" {
            let vc = segue.destination as! TotalCalculateViewController
            vc.imtNumber = imtModelBrain.imtNumber()
            vc.imtText = imtModelBrain.imtText()
            vc.imtColor = imtModelBrain.imtColor()
        }
    }

}
