//
//  ViewController.swift
//  TextFieldsChallengeApp
//
//  Created by Ryan Harvey on 6/21/15.
//  Copyright © 2015 datascientist.guru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var textFieldLockSwitch: UISwitch!
    
    let zipCodeTextFieldDelegate = ZipCodeTextFieldDelegate()
    let cashTextFieldDelegate = CashTextFieldDelegate()
    
    @IBAction func setLockSwitch(sender: UISwitch) {
        // Ensure that any editing session open when switch is set gets closed
        lockableTextField.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.zipCodeTextField.delegate = zipCodeTextFieldDelegate
        self.cashTextField.delegate = cashTextFieldDelegate
        self.lockableTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UITextFieldDelegate methods for lockableTextField
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        if self.textFieldLockSwitch.on {
            return true
        }
        return false
    }


}
