//
//  QuoteViewController.swift
//  Week6.Wednesday.RandomQuoteGenerator
//
//  Created by Connie Xu on 9/29/21.
//

import UIKit

//when making view controller, make sure subclass is of UIViewController
//override view controller to connect controller to storyboard (name (identity) and type)

class QuoteViewController: UIViewController {

    //REASONS WE NEED OUTLETS
    //1. modify properties of UI
    //2. access properties of UI
    
    //creating outlets because want to modify these
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //create the model and use it
        updateQuote()
        
        //WEEK 8 TABLEVIEW
        //let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        //SINGLETON thru this can access conventions out of UIKIt box (from SWIFT)
        //UIApplication.shared.
        //access file manager
        //FileManager.default
        
        //WEEK 7
        //GESTURES
        //1. create gesture recognizer
            //define what the gesture is and what method will it execute once a gesture has been recognized
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapDidRecognized(_:)))
        
        //4 taps required to reognize a tap
        //tap.numberOfTapsRequired = 4
        
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(doubleTapDidRecognized(_:)))
        
        doubleTap.numberOfTapsRequired = 2
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeRightDidRecognized(_:)))
        
        //mutually exclusive double tap & tap
        //only call tap if double tap is not recognized
        tap.require(toFail: doubleTap)
        
        //2. attach the gesture recognizer to a View
        messageLabel.addGestureRecognizer(tap)
        messageLabel.addGestureRecognizer(swipe)
        messageLabel.addGestureRecognizer(doubleTap)
        
        //3. make sure UIView is enabling user interaction (deafult is on, but need to turn on)
        
    }
    
    //⚠️TODO: ERROR IBAction NOT WORKING
    //ANIMATION: on tap of author label, change background color of label
    //another example of usage of closure
    @IBAction func authorLabelDidTapped(_ sender: UITapGestureRecognizer) {
        
        print("\(#function)")
        let originalCenter = self.authorLabel.center
        
        let animator = UIViewPropertyAnimator(duration: 5.0, curve: .easeInOut) {
            //have to use self to tell swift that you're using a property of the class
            //self.authorLabel.backgroundColor = UIColor.blue
            //through inference, no need "UIColor"
            //authorLabel.backgroundColor = .blue
            
            self.authorLabel.alpha = 0
            var center = self.authorLabel.center
            center.x += 140
            self.authorLabel.center = center
            
        }
        
        //add a target state once animation is completed
        animator.addCompletion {p in
                               let animator = UIViewPropertyAnimator(duration: 5.0, curve: .easeInOut){
                               self.authorLabel.alpha = 1
                               self.authorLabel.center = originalCenter
        }
            animator.startAnimation()
        }
        
        //start the animation
        animator.startAnimation()
    }
    
    //shorter want to create gesture in storyboard
    //ctrl + drag action into code to IB Action
        //print("\(#function)")
        //type is UI[]GestureRecognizer
    @IBAction func swipeLeftDidRecognized(_ sender: UISwipeGestureRecognizer) {
        print("\(#function)")
    }
    
    //annotate method with obj so it can be called in action
    @objc func tapDidRecognized(_ tap: UIGestureRecognizer) {
        print("\(#function)")
    }
    
    @objc func swipeRightDidRecognized(_ swipe: UIGestureRecognizer){
        print("\(#function)")
    }
    
    @objc func doubleTapDidRecognized(_ doubleTap: UITapGestureRecognizer) {
        print("\(#function)")
    }
    
    //want something to happen, so action
    @IBAction func getNewQuoteDidTapped(_ sender: UIButton) {
        updateQuote()
    }
    
    func updateQuote() {
        //create the model and use it
        //let quoteService = QuoteService()
        //let quoteService2 = QuoteService()
        //let quote = quoteService.getRandomQuote()
        
        let quote = QuoteService.shared.getRandomQuote()
        
        messageLabel.text = quote.message
        authorLabel.text = quote.author
    }
    //if not using something, remove it
}

//WEEK 7
//SINGLETON - (design pattern) when you request an instnace, you get back the same instance every time
//WHY? sometimes makes sense to only have one instance of an object (one place that has info for all apps)
    //shouldn't be able to create a new object in spirit of the design pattern
//create thru static property
//cons: if not using the singelton, it'll never be deallocated; so bad for memory
//want to use multiple times throughout app

//struct User {
//    let firstName: String
//}
//
//let currentUser = User(firstName: "Adam")

//GESTURES (objects that can be recognized)
//can recognize: touch, swipe, drag, inch, double tap, long press, etc.
//discrete gesture: swipe, touch
//continuous gesture: panning, rotation

//target action design pattern
    //IBAction
    //user taps a button, IBAction is called on

//hold option on simulator simulated 2 fingers
    //hold shift can be directionally move

//ANIMATIONS
//anything you change ins toryboard, you can animated
    //frame, bounds, center, transform, alpha, backgroundColor
//UIViewPropertyAnimator
//Animator states
    //Invative: inital UIView + what UIView returns to
    //Avtive: in the middle of perfomring the animation
    //Stopped: programatically stop the animation
