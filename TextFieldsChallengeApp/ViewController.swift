//
//  ViewController.swift
//  TextFieldsChallengeApp
//
//  Created by Ryan Harvey on 6/21/15.
//  Copyright © 2015 datascientist.guru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextFIeld: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var textFieldLockSwitch: UISwitch!
    
    let zipCodeTextFieldDelegate = ZipCodeTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.zipCodeTextField.delegate = zipCodeTextFieldDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/* UITextFieldDelegate methods
func textFieldShouldBeginEditing(textField: UITextField) -> Bool // return NO to disallow editing.
func textFieldDidBeginEditing(textField: UITextField) // became first responder
func textFieldShouldEndEditing(textField: UITextField) -> Bool // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
func textFieldDidEndEditing(textField: UITextField) // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called

func textFieldShouldClear(textField: UITextField) -> Bool // called when clear button pressed. return NO to ignore (no notifications)
func textFieldShouldReturn(textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.

func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
*/