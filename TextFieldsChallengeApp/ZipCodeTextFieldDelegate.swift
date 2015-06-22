//
//  ZipCodeTextFieldDelegate.swift
//  TextFieldsChallengeApp
//
//  Created by Ryan Harvey on 6/21/15.
//  Copyright © 2015 datascientist.guru. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        return (textField.text?.characters.count < 5) ||
            ( (textField.text?.characters.count == 5) &&
                (string.characters.count == 0) )
    }
}
