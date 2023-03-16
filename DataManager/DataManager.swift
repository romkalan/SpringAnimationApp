//
//  DataManager.swift
//  SpringAnimationApp
//
//  Created by Roman Lantsov on 16.03.2023.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    var animations: [Animation] = []
    
    private init() {}
}
