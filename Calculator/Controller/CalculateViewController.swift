//
//  ViewController.swift
//  Calculator
//
//  Created by Batman 👀 on 30.01.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    //Создаём экземпляр структуры
    var calculatorBrine = CalculatorBrine()
    
    
    
    //Label значений роста и веса
    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    
    //Слайдеры для задавания значении
    @IBOutlet weak var sliderHieght: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //Action slider
    @IBAction func changetSlaideHeight(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        labelHeight.text = "\(height)m"
        
    }
    
    //Action slider
    @IBAction func changetSliderWeight(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        labelWeight.text = "\(weight)kg"
    }
    
    
    //Action Button
    @IBAction func presserCalculate(_ sender: UIButton) {
        //При нажатии кнопки, создаются константы со значенями
        let height = sliderHieght.value
        let weight = sliderWeight.value
        
        //Вызывается функция экземпляра класса, в которую мы пердаем знасения height и weight
        calculatorBrine.calculateBMI(height: height, weight: weight)
        //Запускаем идентификатор "goToResult" для перехода к экрану "ResultViewController".
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrine.getBMIValue()
            destinationVC.advice = calculatorBrine.getAdvice()
            destinationVC.color = calculatorBrine.getColor()
        }
    }
}

