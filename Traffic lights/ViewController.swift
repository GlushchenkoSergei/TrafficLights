//
//  ViewController.swift
//  Traffic lights
//
//  Created by mac on 25.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 50
        redLight.alpha = 0.2
        
        yellowLight.layer.cornerRadius = 50
        yellowLight.alpha = 0.2
        
        greenLight.layer.cornerRadius = 50
        greenLight.alpha = 0.2
        

        buttonStart.layer.cornerRadius = 10
    }

//    решил реализовать без Enum
    
    @IBAction func buttunStartPress() {
        buttonStart.setTitle("Next", for: .normal)
        
        if redLight.alpha == 1 {
            redLight.alpha = 0.2
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.2
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.2
            redLight.alpha = 1
        } else {
            redLight.alpha = 1
        }
    }
    
}
