//
//  ImageCell.swift
//  FanBase2
//
//  Created by Unmilan on 01/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class ImageCell: UICollectionViewCell {
    @IBOutlet weak var movieImage: UIImageView!
    
    func updateViews(movieImg: Images) {
        
        movieImage.image = UIImage(named: movieImg.imageName)
    }
}
