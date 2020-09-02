//
//  File.swift
//  FanBase2
//
//  Created by Unmilan on 01/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import Foundation

struct Movie {
    
private(set) public var title: String
private(set) public var actors: [Actor]

init(title: String, actors: [Actor]) {
    self.title = title
    self.actors = actors
}
    
}
