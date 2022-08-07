//
//  ViewController.swift
//  SettingsScreenOfTheApp
//
//  Created by Macbook on 05.08.2022.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet var colourChangedView: UIView!
    
    @IBOutlet var redLabelView: UILabel!
    @IBOutlet var greenLabelView: UILabel!
    @IBOutlet var blueLabelView: UILabel!
    
    @IBOutlet var valueForRedLabel: UILabel!
    @IBOutlet var valueForGreenLabel: UILabel!
    @IBOutlet var valueForBlueLabel: UILabel!
    
    
    @IBOutlet var sliderForRedLabel: UISlider!
    @IBOutlet var sliderForGreenLabel: UISlider!
    @IBOutlet var sliderForBlueLabel: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colourChangedView.layer.cornerRadius = 10
        
        setupRedLableSlider()
        setupGreenLabelSlider()
        setupBlueLabelSlider()
}
   @IBAction func sliderForRedLabelAction() {
        valueForRedLabel.text = String( round(100*sliderForRedLabel.value)/100)
       changeColour()
    }
    
    @IBAction func sliderForGreenLabelAction() {
        valueForGreenLabel.text = String( round(100*sliderForGreenLabel.value)/100)
        changeColour()
    }
    
    @IBAction func sliderForBlueLabelAction() {
        valueForBlueLabel.text = String( round(100*sliderForBlueLabel.value)/100)
        changeColour()
    }
    // MARK: - Private Methods For Sliders
    
    private func setupRedLableSlider() {
        sliderForRedLabel.value = 0.5
        sliderForRedLabel.minimumValue = 0
        sliderForRedLabel.maximumValue = 1
        valueForRedLabel.text = String(sliderForRedLabel.value)
        sliderForRedLabel.tintColor = .red
    }
    private func setupGreenLabelSlider() {
        sliderForGreenLabel.value = 0.5
        sliderForGreenLabel.minimumValue = 0
        sliderForGreenLabel.maximumValue = 1
        valueForGreenLabel.text = String(sliderForGreenLabel.value)
        sliderForGreenLabel.tintColor = .green
    }
    private func setupBlueLabelSlider() {
        sliderForBlueLabel.value = 0.5
        sliderForBlueLabel.minimumValue = 0
        sliderForBlueLabel.maximumValue = 1
        valueForBlueLabel.text = String(sliderForBlueLabel.value)
        sliderForBlueLabel.tintColor = .blue
    }
    // MARK: - Change Background Colour For View
    private func changeColour() {
        colourChangedView.backgroundColor = UIColor(red: CGFloat(sliderForRedLabel.value), green: CGFloat(sliderForGreenLabel.value), blue: CGFloat(sliderForBlueLabel.value), alpha: 1)
    }
}

