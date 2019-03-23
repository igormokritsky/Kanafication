//
//  hiranagaAndKatakanaDIctionaties.swift
//  Kanafication
//
//  Created by Ihor Mokrytskyi on 3/11/19.
//  Copyright © 2019 Ihor Mokrytskyi. All rights reserved.
//

import Foundation



class Alphabet {
    
    private var easyPart: [String: String] = [:]
    private var mediumPart: [String: String] = [:]
    private var hardPart: [String: String] = [:]
    
    init(easy easyPart: [String: String], medium  mediumPart: [String: String], hard hardPart: [String: String] ) {
        self.easyPart = easyPart
        self.mediumPart = mediumPart
        self.hardPart = hardPart
    }
    
    var easy: [String: String] {
        return self.easyPart
    }
    
    var medium: [String: String] {
        return easy.merging(mediumPart, uniquingKeysWith: { (current, _) in current })
    }
    
    var hard: [String: String] {
        return medium.merging(hardPart, uniquingKeysWith: { (current, _) in current })
    }
    
    func alphabet(for level: AlphabetLevel) -> [String: String] {
        switch level {
        case .easy:
            return easy
        case .medium:
            return medium
        case .hard:
            return hard
        }
    }
    
    enum AlphabetLevel {
        case easy
        case medium
        case hard
    }
}




