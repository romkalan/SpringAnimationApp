//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Roman Lantsov on 16.03.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var springAnimationButton: UIButton!
    
    private var animations = Animation.getRandomAnimations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    @IBAction func animateViewPressed() {
        springAnimationView.animation = animations.preset
        springAnimationView.curve = animations.curve
        springAnimationView.force = animations.force
        springAnimationView.duration = animations.duration
        springAnimationView.delay = animations.delay
        springAnimationView.animate()
        
        updateView()
        
        animations = Animation.getRandomAnimations()
        springAnimationButton.setTitle("Run \(animations.preset)", for: .normal)
    }
    
    private func updateView() {
        descriptionLabel.text = animations.description
    }
}

