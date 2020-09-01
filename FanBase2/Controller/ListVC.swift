//
//  ViewController.swift
//  FanBase2
//
//  Created by Unmilan on 31/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class ListVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var movieTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTable.dataSource = self
        movieTable.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getMovtitle().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell {
            
            let movtitle = DataService.instance.getMovtitle()[indexPath.row]
            
            cell.updateViews(movtitle: movtitle)
            return cell
        }
        else{
            
            return MovieCell()
            
        }
    }

}

