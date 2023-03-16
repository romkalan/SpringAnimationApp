//
//  Animations.swift
//  SpringAnimationApp
//
//  Created by Roman Lantsov on 16.03.2023.
//

import Foundation
import SpringAnimation


struct Animation {
    let preset: AnimationPreset
    let curve: AnimationCurve
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getAnimations() -> [Animation] {
        
        for animation in AnimationPreset.allCases {
            DataManager.shared.animations.append(
                Animation(
                    preset: animation,
                    curve: .allCases.randomElement() ?? .easeIn,
                    force: CGFloat.random(in: 0.5...2),
                    duration: CGFloat.random(in: 0.5...2),
                    delay: 0.3
                )
            )
        }
        return DataManager.shared.animations
    }
}

