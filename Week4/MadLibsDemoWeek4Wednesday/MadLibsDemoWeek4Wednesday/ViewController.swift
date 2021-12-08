//
//  ViewController.swift
//  MadLibsDemoWeek4Wednesday
//
//  Created by Connie Xu on 9/15/21.
//

//press the plus panel button on right side and drag and drop view controller + storyboard

import UIKit

//convention in apple to prefix name with label (e.i. UI)
class ViewController: UIViewController {

    //from storyboard, ctrl drag over to code & connect (labeled IBOutlet)
    @IBOutlet weak var mainTextField: UITextField! //hover over line number bubble to see where it is connected to
    
    //TIP: never change storage type (really , just add a name to the UI element
    
    //TROUBLESHOOT: if change name of var, app will crash; SOLUTION: need to clean up connection on interface builder (storyboard - last tab -- connections section; delete extra item)
    @IBOutlet weak var defaultLabel: UILabel!
    
    //be specific about the data type
    @IBAction func yesDidTapped(_ sender: UIButton) {
        //function actions go here; any swift can go here
        print("i am tapped")
        
        defaultLabel.text = mainTextField.text
    }
    
    //when hit return key on keyboard, make keyboard disappear
    //make textfield into action
    @IBAction func returnDidTapped(_ sender: UITextField) {
        mainTextField.resignFirstResponder()
        //sender.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        //need to be calling this superclass
        //also exists:
            //viewWillAppear()
            //viewDidAppear()
        //combine is weird though
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //defaultLabel.text = "something else"
        
        //! unwraps text
        defaultLabel.text = "filler text \(mainTextField.text!)"
        
        //keyboard dismiss when user presses button
        //use an IBAction
        //first responder in UIKit in this case is that text field
        //mainTextField.resignFirstResponder()
        
        //if want to show up
        //mainTextField.becomeFirstResponder()
    }
    
    
    //tap on background to dismiss keyboard
    //add one giant button around entire app and move it to the back
    @IBAction func backgroundButtonPressed(_ sender: UIButton) {
        sender.resignFirstResponder()
    }
}

//all of iOS is obj oriented

//text property (count & isEmpty); can use validation that user filled something out with this by change color to red if empty
//touchesBegan determines if view touched is background; if it is, resign as first responder

//proper name for the entire screen is UIViewController
