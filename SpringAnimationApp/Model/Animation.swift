//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Roman Lantsov on 16.03.2023.
//

struct Animation: CustomStringConvertible {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(convertToString(from: force))
        duration: \(convertToString(from: duration))
        delay: \(convertToString(from: delay))
        """
    }
    
    static func getRandomAnimations() -> Animation {
        Animation(
            preset: DataStore.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "linear",
            force: Double.random(in: 0.5...2),
            duration: Double.random(in: 0.5...2),
            delay: 0.3
        )
    }
    
    private func convertToString(from value: Double) -> String {
        String(format: "%.1f", value)
    }
}
