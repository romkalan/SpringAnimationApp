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
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
