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
        colorView.layer.cornerRadius = 15
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        switch sender {
        case redSlider: redLabel.text = String(format: "%.2f", redSlider.value)
        case blueSlider: blueLabel.text = String(format: "%.2f", blueSlider.value)
        case greenSlider: greenLabel.text = String(format: "%.2f", greenSlider.value)
        default: return
        }
        changeColorView()
    }
    
    private func changeColorView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
}
