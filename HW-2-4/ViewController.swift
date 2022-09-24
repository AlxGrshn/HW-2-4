//
//  ViewController.swift
//  HW-2-4
//
//  Created by Alexander Grishin on 24.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var colorView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
    }
    
    override func viewDidLayoutSubviews() {
        changeUiViewColor()
    }

    @IBAction func redSliderAction() {
        redLabel.text = redSlider.value.formatted()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = blueSlider.value.formatted()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = greenSlider.value.formatted()
    }
    
    private func changeUiViewColor() {
        colorView.layer.backgroundColor = CGColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
}

