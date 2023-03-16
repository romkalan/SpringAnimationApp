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
    
    @IBOutlet var presetTypeLabel: UILabel!
    @IBOutlet var curveTypeLabel: UILabel!
    @IBOutlet var forceValueLabel: UILabel!
    @IBOutlet var durationValueLabel: UILabel!
    @IBOutlet var delayValueLabel: UILabel!
    
    @IBOutlet var springAnimationButton: UIButton!
    
    private let animations = Animation.getAnimations()
    private lazy var index = Int.random(in: 0..<animations.count)
    
    override func viewDidLoad() {
        updateView()
    }
    
    @IBAction func animateViewPressed() {
        springAnimationView.animation = animations[index].preset.rawValue
        springAnimationView.curve = animations[index].curve.rawValue
        springAnimationView.force = takeRandomNumber()
        springAnimationView.duration = takeRandomNumber()
        springAnimationView.delay = animations[index].delay
        springAnimationView.animate()
        
        updateView()
        
        index = Int.random(in: 0..<animations.count)
        springAnimationButton.setTitle("Run \(animations[index].preset.rawValue)", for: .normal)
    }
    
// MARK: - Private Methods
    private func updateView() {
        presetTypeLabel.text = animations[index].preset.rawValue
        curveTypeLabel.text = animations[index].curve.rawValue
        forceValueLabel.text = convertToString(from: takeRandomNumber())
        durationValueLabel.text = convertToString(from: takeRandomNumber())
        delayValueLabel.text = convertToString(from: animations[index].delay)
    }
    
    private func convertToString(from value: CGFloat) -> String {
        String(format: "%.1f", value)
    }
    
    private func takeRandomNumber() -> CGFloat {
        CGFloat.random(in: 0.5...2)
    }
}

