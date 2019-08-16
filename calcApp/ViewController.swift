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
     /*
    func sum() {
        let firstCount = Int(firstCountField.text!)
        let secondCount = Int(secondCountField.text!)
        let plusSum = firstCount! + secondCount!
        let minusSum = firstCount! - secondCount!
        let kakeruSum = firstCount! * secondCount!
        let waruSum = firstCount! / secondCount!
        var sum = 0
        
        switch sum {
        case Int(plusButtonAction.self):
            //            plusButtonAction((Any).self)
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
    */
    
    @IBOutlet weak var sumLabel: UILabel!
    
    @IBOutlet weak var firstCountField: UITextField!
    
    @IBOutlet weak var secondCountField: UITextField!
    
    // UIButtonを選択、すべてのボタンをここに関連づける
    @IBAction func setButton(_ sender: UIButton) {
        // firstCount,secondCountに値があれば処理を行う
        if let firstCount = Int(firstCountField.text!), let secondCount = Int(secondCountField.text!) {
            switch sender.titleLabel?.text{
                case "+":
                    sumLabel.text = String(firstCount + secondCount)
                case "-":
                    sumLabel.text = String(firstCount - secondCount)
                case "×":
                    sumLabel.text = String(firstCount * secondCount)
                case "÷":
                    sumLabel.text = String(firstCount / secondCount)
                default:
                    firstCountField.text = ""
                    secondCountField.text = ""
                    sumLabel.text = "0"
            }
        }
    }
    
    
    
    
    
    /*
     @IBAction func plusButtonAction(_ sender: Any ) {
     // if文で値があった場合に以下の処理を行う・・という記述が必要
     // ここでは難しいのでswitch分にまとめた時に記述する
     
     
     print(firstCountField.text!, secondCountField.text!)
     sum()
     print()
     処理をしている間は値が変わらないので定数で良い
     textfieldに入っていたデータをInt型に変換
     let firstCount = Int(firstCountField.text!)
     let secondCount = Int(secondCountField.text!)
     Int型に変換したデータを足す
     let plusSum = firstCount! + secondCount!
     sumLabelに計算結果を表示する
     sumLabel.text = String(plusSum)
     }
     
     @IBAction func minusButtonAction(_ sender: Any) {
     sum()
     let firstCount = Int(firstCountField.text!)
     let secondCount = Int(secondCountField.text!)
     let minusSum = firstCount! - secondCount!
     sumLabel.text = String(minusSum)
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
     let firstCount = Int(firstCountField.text!)
     let secondCount = Int(secondCountField.text!)
     let kakeruSum = firstCount! * secondCount!
     sumLabel.text = String(kakeruSum)
     }
     
     @IBAction func waruButtonAction(_ sender: Any) {
     sum()
     let firstCount = Int(firstCountField.text!)
     let secondCount = Int(secondCountField.text!)
     let waruSum = firstCount! / secondCount!
     sumLabel.text = String(waruSum)
     }
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.d
        sumLabel.text = "0"
//        firstCountField.text = String(firstCount)
//        secondCountField.text = String(secondCount)
//        sumLabel.text = String(sumCount)
    }
    
    
}

