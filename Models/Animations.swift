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
    let delay: CGFloat
    
    static func getAnimations() -> [Animation] {
        for _ in 1...AnimationPreset.allCases.count {
            DataManager.shared.animations.append(
                Animation(
                    preset: .allCases.randomElement() ?? .squeezeRight,
                    curve: .allCases.randomElement() ?? .easeIn,
                    delay: 0.3
                )
            )
        }
        return DataManager.shared.animations
    }
}

