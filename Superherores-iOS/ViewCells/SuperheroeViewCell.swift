//
//  SuperheroeViewCell.swift
//  Superherores-iOS
//
//  Created by Mañanas on 4/9/24.
//

import UIKit

class SuperheroeViewCell: UITableViewCell {

    @IBOutlet weak var nombreHeroe: UILabel!
    
    @IBOutlet weak var avatarHeroe: UIImageView!
    
    
    func render(superheroe: Superheroe){
        nombreHeroe.text = superheroe.name
        
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
