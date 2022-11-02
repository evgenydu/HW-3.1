//
//  ViewController.swift
//  HW 3.1
//
//  Created by Евгений Д on 02.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var animatonLable: UILabel!
    @IBOutlet var curveLable: UILabel!
    @IBOutlet var forceLable: UILabel!
    @IBOutlet var durationLable: UILabel!
    
    @IBOutlet var springAnimationView: SpringView!

    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        animatonLable.text = "Animaion: \(DataStore.shared.animations.randomElement() ?? "")"
        curveLable.text = "Curve: \(DataStore.shared.curves.randomElement() ?? "")"
        forceLable.text = "Force: \(Double.random(in: 0.9...1.3))"
        durationLable.text = "Duration: 0.3"
        
        springAnimationView.animation = DataStore.shared.animations.randomElement() ?? ""
        springAnimationView.curve = DataStore.shared.curves.randomElement() ?? ""
        springAnimationView.force = Double.random(in: 0.9...1.3)
        springAnimationView.duration = 0.3
        springAnimationView.animate()
    }
}

