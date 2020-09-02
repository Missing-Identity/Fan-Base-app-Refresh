//
//  ViewController.swift
//  FanBase2
//
//  Created by Unmilan on 31/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class ListVC: UIViewController {
    
    @IBOutlet weak var actorImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var infoLbl: UILabel!
    
    var name = ""
    var image = ""
    var bio = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actorImg.image = UIImage(named: image)
        nameLbl.text = name
        infoLbl.text = bio

        // Do any additional setup after loading the view.
    }
    
    func initInfo(actor: Actor) {
        name = actor.name
        image = actor.imageName
        bio = actor.generalInfo
    }
    
}

