//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Roman Lantsov on 16.03.2023.
//

import Foundation
import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    var animations: [Animation] = []
    
    private init() {}
}

final class DataManager {
    static let shared = DataManager()
    let dataStore = DataStore.shared
    
    private init() {}
    
    func addAnimation() -> [Animation] {
        for animation in AnimationPreset.allCases {
            dataStore.animations.append(
                Animation(
                    preset: animation.rawValue,
                    curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
                    force: CGFloat.random(in: 0.5...2),
                    duration: CGFloat.random(in: 0.5...2),
                    delay: 0.3
                )
            )
        }
        return dataStore.animations
    }
}
