//
//  ViewController.swift
//  HW 3.1
//
//  Created by Евгений Д on 02.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    var animationOptions = AnimationOptions()
    
    @IBOutlet var animatonLable: UILabel!
    @IBOutlet var curveLable: UILabel!
    @IBOutlet var delayLable: UILabel!
    @IBOutlet var runAnimationButton: SpringButton!
    @IBOutlet var springAnimationView: SpringView!

    override func viewDidLoad() {
        super.viewDidLoad()
        animatonLable.text = "Animaion: \(animationOptions.animation)"
        curveLable.text = "Curve: \(animationOptions.curve)"
        delayLable.text = "Delay: \(animationOptions.delay)"
        runAnimationButton.setTitle("Run \(animationOptions.animation)", for: .normal)
    }
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        animatonLable.text = "Animaion: \(animationOptions.animation)"
        curveLable.text = "Curve: \(animationOptions.curve)"
        delayLable.text = "Delay: \(animationOptions.delay)"
        
        springAnimationView.animation = animationOptions.animation
        springAnimationView.curve = animationOptions.curve
        springAnimationView.delay = animationOptions.delay
        springAnimationView.animate()
        
        animationOptions = AnimationOptions()
        
        runAnimationButton.setTitle("Run \(animationOptions.animation)", for: .normal)
    }
}

