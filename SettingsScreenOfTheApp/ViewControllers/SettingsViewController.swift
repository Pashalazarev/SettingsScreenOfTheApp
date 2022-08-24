//
//  ViewController.swift
//  SettingsScreenOfTheApp
//
//  Created by Macbook on 05.08.2022.
//

import UIKit



class SettingsViewController: UIViewController {


    
    @IBOutlet var colourChangedView: UIView!
    
    @IBOutlet var redLabelView: UILabel!
    @IBOutlet var greenLabelView: UILabel!
    @IBOutlet var blueLabelView: UILabel!
    
    @IBOutlet var valueForRedLabel: UILabel!
    @IBOutlet var valueForGreenLabel: UILabel!
    @IBOutlet var valueForBlueLabel: UILabel!
    
    
    @IBOutlet var redLabelSlider: UISlider!
    @IBOutlet var greenLabelSlider: UISlider!
    @IBOutlet var blueLabelSlider: UISlider!
    
    var delegate: SettingsViewControllerDeligate!
    var colour: UIColor!

    // MARK: - Ovveride Functions
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        colourChangedView.layer.cornerRadius = 10
        setupValuesForSliders()
}
    // MARK: - IBActions
    
    @IBAction func doneButtonPressed() {
        delegate.setColour(red: CGFloat(redLabelSlider.value),
                           green: CGFloat(redLabelSlider.value),
                           blue: CGFloat(blueLabelSlider.value))
        dismiss(animated: true)
    }
    
    @IBAction func sliderForRedLabelAction() {
        valueForRedLabel.text = String( round(100*redLabelSlider.value)/100)
       changeColour()
    }
    
    @IBAction func sliderForGreenLabelAction() {
        valueForGreenLabel.text = String( round(100*greenLabelSlider.value)/100)
        changeColour()
    }
    
    @IBAction func sliderForBlueLabelAction() {
        valueForBlueLabel.text = String( round(100*blueLabelSlider.value)/100)
        changeColour()
    }
    // MARK: - Private Methods For Sliders
    
    private func setupValuesForSliders() {
        redLabelSlider.value = 0.5
        redLabelSlider.minimumValue = 0
        redLabelSlider.maximumValue = 1
        valueForRedLabel.text = String(redLabelSlider.value)
        redLabelSlider.tintColor = .red
        
        greenLabelSlider.value = 0.5
        greenLabelSlider.minimumValue = 0
        greenLabelSlider.maximumValue = 1
        valueForGreenLabel.text = String(greenLabelSlider.value)
        greenLabelSlider.tintColor = .green
        
        blueLabelSlider.value = 0.5
        blueLabelSlider.minimumValue = 0
        blueLabelSlider.maximumValue = 1
        valueForBlueLabel.text = String(blueLabelSlider.value)
        blueLabelSlider.tintColor = .blue
    }
   
    // MARK: - Change Background Colour For View
     func changeColour() {
      colourChangedView.backgroundColor = UIColor( red: CGFloat(redLabelSlider.value),
                                                    green: CGFloat(greenLabelSlider.value),
                                                    blue: CGFloat(blueLabelSlider.value),
                                                    alpha: 1)
    }
}


