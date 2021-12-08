//
//  ViewController.swift
//  Week6.Monday
//
//  Created by Connie Xu on 9/28/21.
//

//RESOLUTION - IMAGES
//1. determine frame of image view (200x200 pts)
//2. get 3 diff image resolutions that match the 1x, 2x, 3x view

//1x (1pt == 1 px)
    //200x200 px
//2x (1pt == 2 px)
    //400x400 px
//3x (1pt == 3 px)
    //600x600 px

//easier to start big & scale down


//make the MODEL, VIEW, CONTROLLER folders


//DEBUGGING
//1. discover the problem (logic/function, syntax, connecting things, auto layout, etc.)
//2. locate where
//3. inspect sources to find the cause
//4. fix the problem
//5. confirm your app fixed the problem

//breakpoint: freeze code in a certain line of code
    //select line of code to create a breakpoint
    //green is good (entered the breakpoint)
    //red means app crashed
    //remove breakpoint by drag out of the gutter
    //just click on it, won't run the breakpoint, but can see it in the future (simply disabling the breakpoint)
    //don't need to rerun app for breakpoints
//step over: proceed next line
//step into: proceed to next func
//step out: exit a func

//debug area in xcode
//inside console: "po" + whatever you want to evaluate for swift func, will display what the code says

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addDidTapped(_ sender: UIButton) {
        let firstNumber = Int(firstTextField.text!)
        let secondNumber = Int(secondTextField.text!)
        
        //force unwrap to make the opt int to be an int
        let result = Calculator().add(x: firstNumber!, y: secondNumber!)
        
        print("result is \(result)")
    }

}

