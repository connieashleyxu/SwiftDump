//
//  ViewController.swift
//  Week5.Wednesday.Delegation
//
//  Created by Connie Xu on 9/28/21.
//

import UIKit

//viewController is the delegate because it is processing events from the delegator (UITextfield)

//can conform to aw many protocols as you want
class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var mainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //OTHER OPTION OF DELEGATE:
        //can also call delegate in code
        //need a protocol though (add UITextField above in class definition
        //mainTextField.delegate = self
        //but just right click and connect to view controller (first circle with white square on tab)
    }

    //set the connection (right click delegate)
    let TAG_NAME_TEXTIELD = 100
    let TAG_AGE_TEXTFIELD = 200
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        //if multiple UITextFields, can add tag in main.storyboard (e.i. 100, 200)
        if textField.tag == TAG_NAME_TEXTIELD {
            
        }
        
        if textField.tag == TAG_AGE_TEXTFIELD {
            
        }
        print("\(#function)")
    }
    
    @IBAction func dismissDidTapped(_ sender: UIButton) {
        mainTextField.resignFirstResponder()
    }
    
}

