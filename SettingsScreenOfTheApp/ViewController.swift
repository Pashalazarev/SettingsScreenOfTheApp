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
        colourChangedView.backgroundColor = UIColor(red: 255, green: 0, blue: 0, alpha:CGFloat( sliderForRedLabel.value))
    }
    
    @IBAction func sliderForGreenLabelAction() {
        valueForGreenLabel.text = String( round(100*sliderForGreenLabel.value)/100)
        colourChangedView.backgroundColor = UIColor(red: 0, green: 255, blue: 0, alpha:CGFloat( sliderForGreenLabel.value))
    }
    
    @IBAction func sliderForBlueLabelAction() {
        valueForBlueLabel.text = String( round(100*sliderForBlueLabel.value)/100)
        colourChangedView.backgroundColor = UIColor(red: 0, green: 0, blue: 255, alpha:CGFloat( sliderForBlueLabel.value))
    }
    // MARK: - Private Methods
    
    private func setupRedLableSlider() {
        sliderForRedLabel.value = 0.5
        valueForRedLabel.text = String(sliderForRedLabel.value)
        sliderForRedLabel.minimumValue = 0
        sliderForRedLabel.maximumValue = 1
        sliderForRedLabel.tintColor = .red
    }
    private func setupGreenLabelSlider() {
        sliderForGreenLabel.value = 0.5
        valueForGreenLabel.text = String(sliderForGreenLabel.value)
        sliderForGreenLabel.minimumValue = 0
        sliderForGreenLabel.maximumValue = 1
        sliderForGreenLabel.tintColor = .green
    }
    private func setupBlueLabelSlider() {
        sliderForBlueLabel.value = 0.5
        valueForBlueLabel.text = String(sliderForBlueLabel.value)
        sliderForBlueLabel.minimumValue = 0
        sliderForBlueLabel.maximumValue = 1
        sliderForBlueLabel.tintColor = .blue
    }
}

