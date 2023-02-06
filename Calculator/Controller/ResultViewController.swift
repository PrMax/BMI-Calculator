//
//  ResultViewController.swift
//  Calculator
//
//  Created by Batman 👀 on 02.02.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    //свойство для хранения значения BMI.
    var bmiValue: String?
    //свойство для хранения советов на основе рассчитанного BMI.
    var advice: String?
    //свойство для хранения цвета, соответствующего рассчитанному BMI.
    var color: UIColor?
    
    @IBOutlet weak var bmilabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    //В функции viewDidLoad свойства класса используются для установки текста bmilabel и
    //adviceLabel и цвета фона представления.

    override func viewDidLoad() {
        super.viewDidLoad()
        bmilabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    
    /*Функция recalculatePressed - это функция действия, которая срабатывает при нажатии кнопки "recalculate". Она отменяет текущее представление и возвращает пользователя на предыдущий экран.
     */
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
