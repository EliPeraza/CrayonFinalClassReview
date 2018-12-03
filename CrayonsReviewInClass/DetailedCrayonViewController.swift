//
//  DetailedCrayonViewController.swift
//  CrayonsReviewInClass
//
//  Created by Elizabeth Peraza  on 12/3/18.
//  Copyright © 2018 Elizabeth Peraza . All rights reserved.
//

import UIKit

class DetailedCrayonViewController: UIViewController {
  
  var crayon: Crayon!
  
  @IBOutlet weak var colorName: UILabel!
  
  @IBOutlet weak var redColor: UILabel!
  @IBOutlet weak var redSlider: UISlider!
  
  @IBOutlet weak var greenColor: UILabel!
  @IBOutlet weak var greenSlider: UISlider!
  
  
  @IBOutlet weak var blueColor: UILabel!
  @IBOutlet weak var blueSlider: UISlider!
  
  @IBOutlet weak var alpha: UILabel!
  @IBOutlet weak var alphaStepper: UIStepper!
  
  
  @IBOutlet weak var resetButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    resetColor(resetButton)
    
  }
  
  private func defaultValues() {
    redSlider.value = Float(crayon.red/255)
    greenSlider.value = Float(crayon.green/255)
    blueSlider.value = Float (crayon.blue/255)
    alphaStepper.value = 1
    
    updateLabels()
  }
  
  private func updateLabels (){
    redColor.text = String(format: "%.1f", redSlider.value)
    greenColor.text = String(format: "%.1f", greenSlider.value)
    blueColor.text = String(format: "%.1f", blueSlider.value)
    alpha.text = String(format: "%.1f", alphaStepper.value)
  }
  
  func updateColor(){
    let red =  CGFloat(redSlider.value)
    let green = CGFloat(greenSlider.value)
    let blue = CGFloat(blueSlider.value)
    let alpha = CGFloat(alphaStepper.value)
    
    let color = UIColor(displayP3Red: red, green: green, blue: blue, alpha: alpha)
    
    view.backgroundColor = color
    updateLabels()
  }
  
  @IBAction func sliderChanged(_ slider: UISlider){
    updateColor()
    
  }
  
  @ IBAction func stepperChanged(_ stepper: UIStepper){
    
    updateColor()
  }
  
  @IBAction func resetColor(_ button: UIButton){
    view.backgroundColor = crayon.color()

    defaultValues()
  }
  
  
}
