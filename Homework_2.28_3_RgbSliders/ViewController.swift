//
//  ViewController.swift
//  Homework_2.28_3_RgbSliders
//
//  Created by Ravil on 17.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorView.layer.cornerRadius = 16
        
        setLabelValue()
        paintView()
    }

    @IBAction func masterSliderMoved(_ sender: UISlider) {
        if sender == redSlider {
            redLabel.text = convertToString(from: sender)
        } else if sender == greenSlider {
            greenLabel.text = convertToString(from: sender)
        } else {
            blueLabel.text = convertToString(from: sender)
        }
        
        paintView()
    }
    
    private func setLabelValue() {
        redLabel.text = convertToString(from: redSlider)
        greenLabel.text = convertToString(from: greenSlider)
        blueLabel.text = convertToString(from: blueSlider)
    }
    
    private func paintView() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func convertToString(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

