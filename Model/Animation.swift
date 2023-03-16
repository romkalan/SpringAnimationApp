//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Roman Lantsov on 16.03.2023.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    var description: String {
        " preset: \(preset) \n curve: \(curve) \n force: \(convertToString(from: force)) \n duration: \(convertToString(from: duration)) \n delay: \(convertToString(from: delay))"
    }
    
    static func getAnimations() -> [Animation] {
        DataManager.shared.animations
    }
    
    private func convertToString(from value: CGFloat) -> String {
        String(format: "%.1f", value)
    }
}
