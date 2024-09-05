//
//  DetailViewController.swift
//  Superherores-iOS
//
//  Created by Mañanas on 5/9/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    var superHeroe : Superheroe? = nil
    
    
    private let swiftBetaStackView: UIStackView = {
            let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
    
            return stackView
        }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let superHeroe = superHeroe {
            self.navigationItem.title = superHeroe.name
            avatarImageView.loadFrom(url: superHeroe.image.url)
            
            
            view.addSubview(swiftBetaStackView)
            
            /*
            //https://www.swiftbeta.com/uistackview-en-uikit-con-swift-en-espanol/
            */
            NSLayoutConstraint.activate([
                swiftBetaStackView.bottomAnchor.constraint(equalTo: avatarImageView.layoutMarginsGuide.bottomAnchor),
                swiftBetaStackView.leadingAnchor.constraint(equalTo: avatarImageView.layoutMarginsGuide.leadingAnchor)
            ])
            
            
            ["Batman","Batman"].forEach { price in
                let button = UIButton(type: .system)
                var configuration = UIButton.Configuration.borderedTinted()
                configuration.title = superHeroe.name
                configuration.subtitle = superHeroe.id
                configuration.image = UIImage(contentsOfFile: superHeroe.image.url)
                configuration.imagePadding = 12
                configuration.baseBackgroundColor = .systemTeal
                button.configuration = configuration
                
                swiftBetaStackView.addArrangedSubview(button)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
