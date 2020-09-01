//
//  MovieCell.swift
//  FanBase2
//
//  Created by Unmilan on 01/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieName: UILabel!

    func updateViews(movtitle: Movies) {
        
        movieName.text = movtitle.title
        
    }

}
