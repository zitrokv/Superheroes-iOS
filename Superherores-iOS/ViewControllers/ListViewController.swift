//
//  ListViewController.swift
//  Superherores-iOS
//
//  Created by Mañanas on 4/9/24.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
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
                                        })
    }
    
    
    
    
}
