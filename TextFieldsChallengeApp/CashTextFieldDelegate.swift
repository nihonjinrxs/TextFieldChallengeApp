//
//  CashTextFieldDelegate.swift
//  TextFieldsChallengeApp
//
//  Created by Ryan Harvey on 6/22/15.
//  Copyright © 2015 datascientist.guru. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    var textFieldValue: Int = 0
    let formatter = NSNumberFormatter()
    
    func textFieldDidBeginEditing(textField: UITextField) {
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        
        let cashValue = (Double(textFieldValue) * 0.01) as NSNumber
        textField.text = formatter.stringFromNumber(cashValue)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if let newNumber = Int(string) {
            if newNumber < 10 {
                textFieldValue = textFieldValue * 10 + newNumber
            }
        }
        if string.characters.count == 0 {
            textFieldValue = textFieldValue / 10
        }
        
        let cashValue = (Double(textFieldValue) * 0.01) as NSNumber
        textField.text = formatter.stringFromNumber(cashValue)
        
        return false
    }

}
