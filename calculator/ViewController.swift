//
//  ViewController.swift
//  calculator
//
//  Created by Mia on 3/31/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    private var result = 0.0
    private var firstNumber = ""
    private var temp = ""
    private var lastOperator = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = ""
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        if let touchedButton : UIButton = sender as? UIButton {
            switch touchedButton.tag {
            case 1: 
                print("AC")
                textLabel.text = ""
                result = 0
                temp = ""
            case 2:
                print("+/-");
                // Idk what to do here?
            case 3:
                print("%")
                result = Double(Int(result) % (Int(temp) ?? 1))
                temp = ""
            case 4:
                print("/")
                result /= (temp as NSString).doubleValue
                temp = ""
                lastOperator = "/"
            case 5: 
                print("7")
                temp = temp + "7"
                textLabel.text = temp
            case 6: 
                print("8")
                temp = temp + "8"
                textLabel.text = temp
            case 7: 
                print("9")
                temp = temp + "9"
                textLabel.text = temp
            case 8: 
                print("x")
                result *= (temp as NSString).doubleValue
                print("result: " + String(result))
                temp = ""
                lastOperator = "x"
            case 9: 
                print("4")
                temp = temp + "4"
                textLabel.text = temp
            case 10: 
                print("5")
                temp = temp + "5"
                textLabel.text = temp
            case 11: 
                print("6")
                temp = temp + "6"
                textLabel.text = temp
            case 12: 
                print("-")
                result -= (temp as NSString).doubleValue;
                print("result: " + String(result))
                temp = "";
                lastOperator = "-"
            case 13: 
                print("1")
                temp = temp + "1"
                textLabel.text = temp
            case 14: 
                print("2")
                temp = temp + "2"
                textLabel.text = temp
            case 15: 
                print("3")
                temp = temp + "3"
                textLabel.text = temp
            case 16: 
                print("+")
                result += (temp as NSString).doubleValue
                print("result: " + String(result))
                temp = "";
                lastOperator = "+";
            case 17: 
                print("0")
                temp = temp + "0"
                textLabel.text = temp
            case 18: 
                print(".")
                temp = temp + "."
                textLabel.text = temp
            case 19: 
                print("=")
                if (Float(temp) != nil){
                    switch lastOperator {
                    case "+": result += Double(temp) ?? 0.0
                    case "-": result -= Double(temp) ?? 0.0
                    case "*": result *= Double(temp) ?? 0.0
                    case "/": result /= Double(temp) ?? 1.0
                    case "%": result = Double(Int(result) % (Int(temp) ?? 1))
                    default: break
                    }
                    if floor(result) == result {
                        textLabel.text = String(Int(result))
                    }
                    else {
                        textLabel.text = String(result)
                    }
                }
                result = 0
                temp = ""
                print(result)
            default: print("error")
            }
        }
    }

}

