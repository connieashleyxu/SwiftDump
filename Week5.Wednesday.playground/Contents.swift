import UIKit
import Foundation

//Design Patterns:
    //MVC (Model View Controller)
    //Delegation
    //Notification
    //Singleton

//MVC (MODEL VIEW CONTROLLER)
//Model: the brains; data storage and processing; task class
//View: the looks; UI; interface builder
//Controller: the glue; connecting data with the view; view controllers
//new folders for MODEL, VIEW, & CONTROLLER

//PROTOCOL
//protocol is a list of methods
//if a class conforms to protocol, it needs to contain these methods

//need to add this if want to add optional
@objc
//1) declare protocol
protocol Drivable {
    //can have a property (var) in a protocol
    
    func turnRight()
    func turnLeft()
    func accelerate(speed: Double) -> Double
    
    //can mark methods optional
    //need to add this if want to add optional (meaning, don't need to include in the class)
    @objc optional func decellerate(speed: Double) -> Double
}

//2) use protocol
//needs to have all protocol methods implemented
class Tesla : Drivable {
    func turnRight() {
        
    }
    
    func turnLeft() {
        
    }
    
    //accepts a double, returns a double
    func accelerate(speed: Double) -> Double {
        return speed + 10
    }
    
    func decellerate(speed: Double) -> Double {
        return speed - 10
    }
    
    
}

let myCar = Tesla()

//DELEGATION (1 to 1)
//delegator: instance that emits events
    //protocol: description (in the middle)
//delegate: does something in response to the event

//UIKit example of delegation

//Protocol: UITextFieldDelegate (name of the protocol; all the events the delgator could emit)
//Delegate: Our custom UIViewController
//Delegator: UITextField

//STEP 1: in custom class, adopt delegate's protocol
//STEP 2: implement delegate you care about
//STEP 3: emit
