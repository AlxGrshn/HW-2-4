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
    @IBOutlet var bluerLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
    }

    @IBAction func redSliderAction() {
        redLabel.text = redSlider.value.formatted()
    }
    
    @IBAction func blueSliderAction() {
        bluerLabel.text = blueSlider.value.formatted()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = greenSlider.value.formatted()
    }
    
    
}

