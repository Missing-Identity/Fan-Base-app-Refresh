//
//  Actors.swift
//  FanBase2
//
//  Created by Unmilan on 02/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import Foundation

struct Actor {
    
    private(set) var name: String
    private(set) var imageName: String
    private(set) var generalInfo: String
    
    init(name: String, imageName: String, generalInfo: String) {
        self.name = name
        self.imageName = imageName
        self.generalInfo = generalInfo
    }
}
