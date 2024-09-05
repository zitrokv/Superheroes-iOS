//
//  ListViewController.swift
//  Superherores-iOS
//
//  Created by Mañanas on 4/9/24.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var superheroeList: [Superheroe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        SuperheroeProvider.findSuperheroesByName("Batman", withResult: { results in
                                                 /*for superheroe in results{
                                                    //print (superheroe.name)
                                                     
                                                 }*/
            self.superheroeList = results
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        })
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superheroeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SuperheroeViewCell
        
        let superhero = superheroeList[indexPath.row]
        
        cell.render(superheroe: superhero)
        
        return cell
        
    }
    
    
}
