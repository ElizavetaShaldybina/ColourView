//
//  ViewController.swift
//  ColourView
//
//  Created by Елизавета Шалдыбина on 29.09.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var ourView: UIView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    @IBOutlet weak var firstSlider: UISlider!
    @IBOutlet weak var secondSlider: UISlider!
    @IBOutlet weak var thirdSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFirstSlider()
        setupFirstLabel()
        
        setupSecondSlider()
        setupSecondLabel()
        
        setupThirdSlider()
        setupThirdLabel()
        
        ourView.layer.cornerRadius = 10
        
        ourView.backgroundColor = UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: CGFloat(firstSlider.value))
        ourView.backgroundColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: CGFloat(secondSlider.value))
        ourView.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: CGFloat(thirdSlider.value))
        
        ourView.backgroundColor = UIColor(red: CGFloat(firstSlider.value), green: CGFloat(secondSlider.value), blue: CGFloat(thirdSlider.value), alpha: 0.5)
    }
    
    @IBAction func firstSliderAction() {
        firstLabel.text = String(format: "%.2f", firstSlider.value)
        ourView.backgroundColor = UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: CGFloat(firstSlider.value))
        ourViewChanging()
    }
    
    @IBAction func secondSliderAction() {
        secondLabel.text = String(format: "%.2f", secondSlider.value)
        ourView.backgroundColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: CGFloat(secondSlider.value))
        ourViewChanging()
    }
    
    @IBAction func thirdSliderAction() {
        thirdLabel.text = String(format: "%.2f", thirdSlider.value)
        ourView.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: CGFloat(thirdSlider.value))
        ourViewChanging()
    }
    
    private func setupFirstLabel() {
        firstLabel.text = firstSlider.value.formatted()
    }
    
    private func setupSecondLabel() {
        secondLabel.text = secondSlider.value.formatted()
    }
    
    private func setupThirdLabel() {
        thirdLabel.text = thirdSlider.value.formatted()
    }
    
    private func setupFirstSlider() {
        firstSlider.value = 0
        firstSlider.minimumValue = 0
        firstSlider.maximumValue = 1
    }
    
    private func setupSecondSlider() {
        secondSlider.value = 0
        secondSlider.minimumValue = 0
        secondSlider.maximumValue = 1
    }
    
    private func setupThirdSlider() {
        thirdSlider.value = 0
        thirdSlider.minimumValue = 0
        thirdSlider.maximumValue = 1
    }
    
    private func ourViewChanging() {
        ourView.backgroundColor = UIColor(red: CGFloat(firstSlider.value), green: CGFloat(secondSlider.value), blue: CGFloat(thirdSlider.value), alpha: 0.5)
    }
}
