//
//  ViewController.swift
//  calculatar
//
//  Created by 柳本宗達 on 2017/03/28.
//  Copyright © 2017年 柳本宗達. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label:UILabel!
    @IBOutlet var mark:UILabel!

    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    var i: Int = 0
    var t: Int = 0
    
    var ope: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func select0(){
        number1 = number1*10
        label.text = String(number1)
        i = 0
        t = 0

        
    }
    @IBAction func select1(){
        number1 = number1*10 + 1
        label.text = String(number1)
        i = 0
        t = 1

    }
    @IBAction func select2(){
        number1 = number1*10 + 2
        label.text = String(number1)
        i = 0
        t = 2

    }
    @IBAction func select3(){
        number1 = number1*10 + 3
        label.text = String(number1)
        i = 0
        t = 3

    }
    @IBAction func select4(){
        number1 = number1*10 + 4
        label.text = String(number1)
        i = 0
        t = 4

    }
    @IBAction func select5(){
        number1 = number1*10 + 5
        label.text = String(number1)
        i = 0
        t = 5

    }
    @IBAction func select6(){
        number1 = number1*10 + 6
        label.text = String(number1)
        i = 0
        t = 6

    }
    @IBAction func select7(){
        number1 = number1*10 + 7
        label.text = String(number1)
        i = 0
        t = 7

    }
    @IBAction func select8(){
        number1 = number1*10 + 8
        label.text = String(number1)
        i = 0
        t = 8

    }
    @IBAction func select9(){
        number1 = number1*10 + 9
        label.text = String(number1)
        i = 0
        t = 9

    }
    @IBAction func reset(){
        number1 = 0
        number2 = 0
        number3 = 0
        i = 0
        label.text = String(number1)
        mark.text = String("")

    }
    @IBAction func plus(){
        if (i == 0 ){
        number2 = number1
        number1 = 0
        ope = 1
        mark.text = String("+")
    }
        i = 1
    }
    @IBAction func minus(){
        if (i == 0 ){

        number2 = number1
        number1 = 0
        ope = 2
        mark.text = String("-")

    }
        i = 1

    }
    @IBAction func times(){
        if (i == 0 ){

        number2 = number1
        number1 = 0
        ope = 3
        mark.text = String("×")

    }
        i = 1

    }
    @IBAction func devided(){
        if (i == 0 ){

        number2 = number1
        number1 = 0
        ope = 4
        mark.text = String("÷")

    }
        i = 1

    }
    @IBAction func del(){
    number1 = (number1 - t)/10
        label.text = String(number1)

    
    }
    @IBAction func percent(){
    if (i == 0 ){
    
    number2 = number1
    number1 = 0
    ope = 5
    mark.text = String("%")
    
    }
    i = 1

    
    }


    @IBAction func equal(){
        if (ope == 4 && number1 == 0){
            label.text = String("ERROR")
            
                    }else{

        switch ope {
            case 1:
                number3 = number2 + number1
            case 2:
                number3 = number2 - number1
            case 3:
                number3 = number2 * number1
            case 4:
                number3 = number2 / number1
            case 5:
                number3 = number2 * number1 / 100

            default: break

        }
        
        label.text = String(number3)
                number2 = number3
        mark.text = String("=")
        i = 0


    }
}
}

