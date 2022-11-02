//
//  AnimationOptions.swift
//  HW 3.1
//
//  Created by Евгений Д on 03.11.2022.
//

import Foundation

struct AnimationOptions {
    let animation = DataStore.shared.animations.randomElement() ?? ""
    let curve = DataStore.shared.curves.randomElement() ?? ""
    let delay = 0.3
}
