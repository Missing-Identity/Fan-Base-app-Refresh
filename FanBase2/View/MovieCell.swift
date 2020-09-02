//
//  MovieCell.swift
//  FanBase2
//
//  Created by Unmilan on 02/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieTitleLbl: UILabel!
    @IBOutlet private var actorCollectionView: UICollectionView!
    
    func updateViews(movieName: String) {
        
        movieTitleLbl.text = movieName
        
    }
    
    func setCollectionViewDataSourceDelegateforRow(dataSource: UICollectionViewDataSource, delegate: UICollectionViewDelegate, forRow: Int) {
        
        actorCollectionView.delegate = delegate
        actorCollectionView.dataSource = dataSource
        actorCollectionView.tag = forRow
        actorCollectionView.reloadData()
        
    }

}
