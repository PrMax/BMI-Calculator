//
//  CalculatorBrine.swift
//  Calculator
//
//  Created by Batman 👀 on 02.02.2023.
//


import UIKit

struct CalculatorBrine {
    //Экземпляр структуры, через него мы обращаемся к свойствам BMI
    var bim: BMI?
    
    /*Метод который вычисляет диапазон значении с советами и цветом бэкграунда. В зависимости от значения "bimValue" метод создает новый экземпляр структуры "BMI" с соответствующим советом и цветом. Свойство "bim" обновляется.
     */
    mutating func calculateBMI (height: Float , weight: Float) {
        
        let bimValue = weight / (height * height)
        
        if bimValue < 18.5 {
            bim = BMI(value: bimValue, advice: "Eat more pies", color: UIColor.blue)
        } else if bimValue < 24.9 {
            bim = BMI(value: bimValue, advice: "You are perfect!", color: UIColor.green)
        } else {
            bim = BMI(value: bimValue, advice: "Eat less pies!", color: UIColor.red)
        }
        
    }
    
    //Функция возвращает значение индекса в виде строки
    func getBMIValue() -> String {
        //guard bim != nil else { return "Error"}
        let getBMI = String(format: "%.1f", bim?.value ?? 0.0 )
        return getBMI
    }
    
    //Метод "getAdvice" возвращает строку рекомендаций, связанную с рассчитанным BMI
    func getAdvice() -> String {
        return bim?.advice ?? "Error"
    }
    
    //Метод "getColor" возвращает цвет, связанный с рассчитанным BMI. 
    func getColor() -> UIColor {
        
        return bim?.color ?? .white
    }
}
