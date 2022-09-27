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
        changeColorView()
        setValue()
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        switch sender {
        case redSlider: redLabel.text = redSlider.value.roundFloat()
        case blueSlider: blueLabel.text = blueSlider.value.roundFloat()
        case greenSlider: greenLabel.text = greenSlider.value.roundFloat()
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
    
    private func setValue() {
        redLabel.text = redSlider.value.roundFloat()
        blueLabel.text = blueSlider.value.roundFloat()
        greenLabel.text = greenSlider.value.roundFloat()
    }
}

extension Float {
    func roundFloat() -> String {
        String(format: "%.2f", self)
    }
}
