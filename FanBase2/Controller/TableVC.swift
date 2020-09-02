//
//  TableVC.swift
//  FanBase2
//
//  Created by Unmilan on 02/09/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class TableVC: UITableViewController {

    @IBOutlet weak var moviesTableView: UITableView!
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleMovies()
        moviesTableView.rowHeight = 275
        moviesTableView.estimatedRowHeight = 275
        
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "MovieTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MovieTableViewCell  else {
            fatalError()
        }
        
        let movie = movies[indexPath.row]
        cell.initActors(movie: movie)
        cell.actorsCollectionView.reloadData()
        cell.updateViews(movie: movie, sender: self)
        return cell
    }
    
    
    
    
    
    private func loadSampleMovies() {
        
        movies = DataService.instance.getMovies()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profileVC = segue.destination as? ListVC {
            assert(sender as? Actor != nil)
            profileVC.initInfo(actor: sender as! Actor)
        }
    }

}
