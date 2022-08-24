//
//  StartViewController.swift
//  SettingsScreenOfTheApp
//
//  Created by Pavel Lazarev Macbook on 24.08.2022.
//

import UIKit

protocol SettingsViewControllerDeligate {
    func setColour(red:CGFloat, green:CGFloat, blue:CGFloat)
}

final class StartViewController: UIViewController {
    
    @IBOutlet var backGroudColourOfView: UIView!
    
   
   // MARK: - Ovveride Func
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.colour = view.backgroundColor
        settingsVC.delegate = self
    }
    // MARK: - IBAction Func
    
    @IBAction func tabBarButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "viewController", sender: nil)
    }
}
// MARK: - Extension
extension StartViewController: SettingsViewControllerDeligate {
    func setColour(red:CGFloat, green:CGFloat, blue:CGFloat) {
        backGroudColourOfView.backgroundColor = UIColor(red: CGFloat(red),
                                                        green: CGFloat(green),
                                                        blue: CGFloat(blue),
                                                        alpha: 1)
    }
}



