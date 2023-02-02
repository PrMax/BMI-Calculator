//
//  ResultViewController.swift
//  Calculator
//
//  Created by Batman 👀 on 02.02.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var bmilabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmilabel.text = bmiValue

        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
