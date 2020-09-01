//
//  DataService.swift
//  FanBase2
//
//  Created by Unmilan on 01/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let movtitle = [
        Movies(title: "Avengers: Endgame"),
        Movies(title: "Whiplash"),
        Movies(title: "Joker"),
        Movies(title: "The Imitation Game")
    ]
    
    func getMovtitle() -> [Movies] {
        
        return movtitle
        
    }
}
