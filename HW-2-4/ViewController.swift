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

    @IBAction func sliderAction() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        changeColorView()
    }
    
    private func changeColorView() {
        colorView.layer.cornerRadius = 25
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
}
