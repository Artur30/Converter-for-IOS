//
//  ViewController.swift
//  converter
//
//  Created by Артур Гумиров on 25.07.16.
//  Copyright © 2016 Артур Гумиров. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    @IBOutlet var mileField : UITextField?
    @IBOutlet var mileResult : UILabel?
    @IBAction func mileBut(sender : UIButton) {
        let mile:Double = mileField!.text.bridgeToObjectiveC().doubleValue
        let constChislo:Double = 1.61
        
        var km:Double=mile*constChislo
        if (mile != 0.0){
            var Kmresult = "КМ: \(km)"
            mileResult.text = Kmresult
        }
        else {
            var text:String = "Введенное значение не число!"
            
            mileResult.text = text
        }
    }
    @IBOutlet var tempField : UITextField
    @IBOutlet var tempResult : UILabel
    @IBAction func tempBut(sender : UIButton) {
        let temp:Double = tempField.text.bridgeToObjectiveC().doubleValue
        let const1:Double = 32
        let const2:Double = 1.8
        var celsius:Double = (temp - const1) / const2
        if (temp != 0.0){
            var цел = "Celsius: \(celsius)"
            tempResult.text = цел
        }
        else {
            var text:String = "Введенное значение не число!"
            
            tempResult.text = text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
