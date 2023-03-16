//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Roman Lantsov on 16.03.2023.
//

import Foundation
import SpringAnimation

final class DataManager {
    static let shared = DataManager()
    
    var animations: [Animation] {
        var animations: [Animation] = []
        
        for animation in AnimationPreset.allCases {
            animations.append(
                Animation(
                    preset: animation.rawValue,
                    curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
                    force: CGFloat.random(in: 0.5...2),
                    duration: CGFloat.random(in: 0.5...2),
                    delay: 0.3
                )
            )
        }
        return animations
    }
    
    private init() {}
}
