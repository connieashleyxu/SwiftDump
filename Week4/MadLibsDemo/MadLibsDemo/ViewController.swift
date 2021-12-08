//
//  ViewController.swift
//  MadLibsDemo
//
//  Created by Connie Xu on 9/15/21.
//

//ViewController.swift is the default file
//can add another view controller, but need to create a custom class
//class MadLibsViewController: UIViewController {}
//in storyboard, enter name of class to connect the outlets

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var verbTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var lessOrMoreSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var animalSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var favoriteNumberSlider: UISlider!
    
    @IBOutlet weak var petStepper: UIStepper!
    
    @IBOutlet weak var happyEndingSwitch: UISwitch!
    
    @IBOutlet weak var favoriteNumberLabel: UILabel!
    
    @IBOutlet weak var petLabel: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView.isHidden = true
    }
    
    @IBAction func lessOrMoreDidTapped(_ sender: UISegmentedControl) {
        if lessOrMoreSegmentedControl.selectedSegmentIndex == 0 {
            containerView.isHidden = true
        }
        else {
            containerView.isHidden = false
        }
    }
    
    @IBAction func createStoryDidTapped(_ sender: UIButton) {
        //at age of 21, bob took a trip to Austin with 3 pets in order to sing with a moose. bob decided to buy 42. now they live happily ever after
        
        //gives text of segment of animal names
        //gives int property of selected index
        let animalTitle = animalSegmentedControl.titleForSegment(at:
             animalSegmentedControl.selectedSegmentIndex)
        
        //don't get information from label
        var story = "At age of \(ageTextField.text!), \(nameTextField.text!) took a trip to \(cityTextField.text!) with \(Int(petStepper.value)) pets in order to \(verbTextField.text!) with a \(animalTitle!).  \(nameTextField.text!) decided to buy \(Int(favoriteNumberSlider.value))."
        
        if happyEndingSwitch.isOn {
            story += " Now they live happily ever after."
        }
        else {
            story += " Things didn't end well for \(nameTextField.text!)..."
        }
        
        print(story)
        
        //alert show up story
        let alertController = UIAlertController(title: "Mad Lib Story", message: story, preferredStyle: .alert)
        
        let doneButton = UIAlertAction(title:"Done", style: .default, handler: nil)
        
        alertController.addAction(doneButton)
        
        present(alertController, animated: true, completion: nil)
    }
    
    //remember to change min and max + current val in storyboard
    @IBAction func sliderDidChange(_ sender: UISlider) {
        //float --> int --> string
        favoriteNumberLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        petLabel.text = "\(Int(sender.value))"
    }
}
