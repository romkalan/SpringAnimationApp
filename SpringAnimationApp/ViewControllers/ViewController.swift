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
    
    private let animations = Animation.getAnimations()
    private lazy var index = Int.random(in: 0..<animations.count)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    @IBAction func animateViewPressed() {
        springAnimationView.animation = animations[index].preset
        springAnimationView.curve = animations[index].curve
        springAnimationView.force = animations[index].force
        springAnimationView.duration = animations[index].duration
        springAnimationView.delay = animations[index].delay
        springAnimationView.animate()
        
        updateView()
        
        index = Int.random(in: 0..<animations.count)
        springAnimationButton.setTitle("Run \(animations[index].preset)", for: .normal)
    }
    
    private func updateView() {
        descriptionLabel.text = animations[index].description
    }
}

