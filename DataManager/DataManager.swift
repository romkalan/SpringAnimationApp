//
//  DataManager.swift
//  SpringAnimationApp
//
//  Created by Roman Lantsov on 16.03.2023.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    var animations = [
        Animation(
            preset: .allCases.randomElement() ?? .squeezeRight,
            curve: .allCases.randomElement() ?? .easeIn,
            delay: 0.3
        )
    ]
    
    private init() {}
}
