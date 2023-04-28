//
//  ViewController.swift
//  mySliders
//
//  Created by Матвей Авдеев on 28.04.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: IBOutlet
    @IBOutlet var settingColorView: UIView!
    
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var redLabel: UILabel!
    
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setting(slider: redSlider)
        setting(slider: greenSlider)
        setting(slider: blueSlider)
        
        
        
      
    }
    // MARK: IBAction
    @IBAction func slidersAction(_ sender: UISlider) {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        
        let formattedBlueSliderValue = String(format: "%.2f", blueSlider.value)
        let formattedGreenSliderValue = String(format: "%.2f", greenSlider.value)
        let formattedRedSliderValue = String(format: "%.2f", redSlider.value)
        
        redLabel.text = formattedRedSliderValue
        greenLabel.text = formattedGreenSliderValue
        blueLabel.text = formattedBlueSliderValue
        
        settingColorView.backgroundColor = .init(red: red, green: green, blue: blue, alpha: 1)
        
    }
    // MARK: privatFunc
    private func setting(slider: UISlider) {
        slider.value = 0.50
        slider.minimumValue = 0
        slider.maximumValue = 1
        
    }

    
    
}


