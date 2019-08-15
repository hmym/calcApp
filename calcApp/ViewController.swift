//
//  ViewController.swift
//  calcApp
//
//  Created by 濱山知香 on 2019/08/15.
//  Copyright © 2019 hmym.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstCount = 0
    var secondCount = 0
    var sumCount = 0
    
    func sum() {
        let firstCount = Int(firstCountField.text!)
        let secondCount = Int(secondCountField.text!)
        let plusSum = firstCount! + secondCount!
        let minusSum = firstCount! - secondCount!
        let kakeruSum = firstCount! * secondCount!
        let waruSum = firstCount! / secondCount!
        
        switch sumCount {
        case plusSum:
            self.plusButtonAction(sumCount)
            sumLabel.text = String(plusSum)
        case minusSum:
            sumLabel.text = String(minusSum)
        case kakeruSum:
            sumLabel.text = String(kakeruSum)
        case waruSum:
            sumLabel.text = String(waruSum)
        default:
            sumCount = 0
        }
    }
    
    @IBOutlet weak var sumLabel: UILabel!
    
    @IBOutlet weak var firstCountField: UITextField!
    
    @IBOutlet weak var secondCountField: UITextField!
    
    @IBAction func plusButtonAction(_ sender: Any) {
        print()
        sum()
        print()
//        let firstCount = Int(firstCountField.text!)
//        let secondCount = Int(secondCountField.text!)
//        let plusSum = firstCount! + secondCount!
//        sumLabel.text = String(plusSum)
    }
    
    @IBAction func minusButtonAction(_ sender: Any) {
        sum()
//        let firstCount = Int(firstCountField.text!)
//        let secondCount = Int(secondCountField.text!)
//        let minusSum = firstCount! - secondCount!
//        sumLabel.text = String(minusSum)
    }
    
    @IBAction func delButtonAction(_ sender: Any) {
        firstCount = 0
        secondCount = 0
        sumCount = 0
        firstCountField.text = String(firstCount)
        secondCountField.text = String(secondCount)
        sumLabel.text = String(sumCount)
    }
    
    @IBAction func kakeruButtonAction(_ sender: Any) {
        sum()
//        let firstCount = Int(firstCountField.text!)
//        let secondCount = Int(secondCountField.text!)
//        let kakeruSum = firstCount! * secondCount!
//        sumLabel.text = String(kakeruSum)
    }
    
    @IBAction func waruButtonAction(_ sender: Any) {
        sum()
//        let firstCount = Int(firstCountField.text!)
//        let secondCount = Int(secondCountField.text!)
//        let waruSum = firstCount! / secondCount!
//        sumLabel.text = String(waruSum)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstCountField.text = String(firstCount)
        secondCountField.text = String(secondCount)
        sumLabel.text = String(sumCount)
    }


}

