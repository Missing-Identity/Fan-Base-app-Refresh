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
    
    private let movies = [
        Movie(title: "Avengers: Endgame"),
        Movie(title: "Titanic")
    ]
    
    private let avengers = [
        Actor(name: "Robert Downey Jr", imageName: "800px-Robert_Downey_Jr_2014_Comic_Con_(cropped).jpg", generalInfo: ""),
        Actor(name: "Chris Evans", imageName: "chris-evans-feat-image.jpg", generalInfo: ""),
        Actor(name: "Paul Rudd", imageName: "800px-Paul_Rudd_2_SDCC_2014.jpg", generalInfo: ""),
        Actor(name: "Chris Hemsworth", imageName: "800px-Chris_Hemsworth_by_Gage_Skidmore_2_(cropped).jpg", generalInfo: ""),
        Actor(name: "Chadwick Boseman", imageName: "6b4606e999eaa3460cfa3035e33e3dc8db-chadwick-boseman-931925976.rhorizontal.w700.jpg", generalInfo: "")
    ]
    
    func getActors(forTitle: String) -> [Actor] {
        var movieActors = [Actor]()
        if forTitle == "Avengers: Endgame" {
            movieActors = avengers
        }
        
        return movieActors
    }
    
    func getMovies() -> [Movie] {
        return movies
    }
}
