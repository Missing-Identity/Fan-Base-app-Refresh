//
//  MovieTableViewCell.swift
//  FanBase2
//
//  Created by Unmilan on 02/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    //Movie title label
    @IBOutlet weak var titleLbl: UILabel!
    
    //Actors collection view
    @IBOutlet weak var actorsCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        actorsCollectionView.dataSource = self
        actorsCollectionView.delegate = self
    }
    
    private var actors: [Actor]!
    
    private var sender: UIViewController!
    
    
    func updateViews(movie: Movie, sender: UIViewController) {
        titleLbl.text = movie.title
        actors = DataService.instance.getActors(forTitle: movie.title)
        self.sender = sender
    }
    
    
    func initActors(movie: Movie) {
        actors = DataService.instance.getActors(forTitle: movie.title)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        actors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCollectionViewCell", for: indexPath) as? ActorCollectionViewCell {
            let actor = actors[indexPath.row]
            cell.updateViews(actor: actor)
            cell.tag = indexPath.row
            return cell
        }
        return ActorCollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let act = actors[indexPath.row]
        sender.performSegue(withIdentifier: "ListVC", sender: act)
    }
    
   }
