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
    
    private let avengersimage = [
        Images(imageName: "Avengers.jpg"),
        Images(imageName: "Chad.png"),
        Images(imageName: "Evans.png"),
        Images(imageName: "Hems.png"),
        Images(imageName: "Rudd.png"),
        Images(imageName: "Rdj.png")
    ]
    
    func getAvengersImages() -> [Images] {
        
        return avengersimage
    }
    
    func getMovtitle() -> [Movies] {
        
        return movtitle
        
    }
}
