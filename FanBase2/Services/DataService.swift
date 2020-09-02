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
        Images(imageName: "Avengers-Endgame-2019-Poster-Wallpaper.jpg"),
        Images(imageName: "6b4606e999eaa3460cfa3035e33e3dc8db-chadwick-boseman-931925976.rhorizontal.w700.jpg"),
        Images(imageName: "chris-evans-feat-image.jpg"),
        Images(imageName: "800px-Chris_Hemsworth_by_Gage_Skidmore_2_(cropped).jpg"),
        Images(imageName: "800px-Paul_Rudd_2_SDCC_2014.jpg"),
        Images(imageName: "800px-Robert_Downey_Jr_2014_Comic_Con_(cropped).jpg")
    ]
    
    func getAvengersImages() -> [Images] {
        
        return avengersimage
    }
    
    func getMovtitle() -> [Movies] {
        
        return movtitle
        
    }
}
