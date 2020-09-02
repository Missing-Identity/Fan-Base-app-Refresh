//
//  ViewController.swift
//  FanBase2
//
//  Created by Unmilan on 31/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class ListVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var movieTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTable.delegate = self
        movieTable.dataSource = self
        
    }
    
    
    
}

