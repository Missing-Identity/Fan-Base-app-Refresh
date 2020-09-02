//
//  ActorCollectionViewCell.swift
//  FanBase2
//
//  Created by Unmilan on 02/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class ActorCollectionViewCell: UICollectionViewCell {
    
    //Actor image
    @IBOutlet weak var actorImg: UIImageView!
    //Actor name
    @IBOutlet weak var actorName: UILabel!
    
    
    func updateViews(actor: Actor) {
        actorImg.image = UIImage(named: actor.imageName)
        actorName.text = actor.name
    }
    
}
