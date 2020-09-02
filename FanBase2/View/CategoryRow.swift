//
//  CategoryRow.swift
//  FanBase2
//
//  Created by Unmilan on 02/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class CategoryRow: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    
    func updateViews(movie: Movies) {
        
        movieTitle.text = movie.title
        
    }

}

extension CategoryRow: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "videoCell", for: indexPath)
        return cell
    }
}
