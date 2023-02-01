//
//  ViewController.swift
//  Calculator
//
//  Created by Batman 👀 on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //Label значений роста и веса
    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    
    //Слайдеры
    @IBOutlet weak var sliderHieght: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        //создаём константы со значенями
        let height = sliderHieght.value
        let weight = sliderWeight.value
        //Вычисляем индекс веса
        let bmi = weight / pow(height, 2)
        
    }
    
}

