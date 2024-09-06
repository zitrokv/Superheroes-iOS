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
    
    
    private let swiftBetaStackView11: UIStackView = {
            let stackView11 = UIStackView()
        stackView11.translatesAutoresizingMaskIntoConstraints = false
        
        stackView11.axis = .horizontal
        stackView11.spacing = 8
    
            return stackView11
        }()
    
    private let swiftBetaStackView: UIStackView = {
            let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.axis = .vertical
        stackView.spacing = 50
        stackView.alignment = .leading
    
            return stackView
        }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let superHeroe = superHeroe {
            self.navigationItem.title = superHeroe.powerstats.combat! + " - " + superHeroe.name
            avatarImageView.loadFrom(url: superHeroe.image.url)
            //superHeroe.powerStats.
            
            
            view.addSubview(swiftBetaStackView)
            
           
            
            /*
            //https://www.swiftbeta.com/uistackview-en-uikit-con-swift-en-espanol/
            */
            NSLayoutConstraint.activate([
                swiftBetaStackView.bottomAnchor.constraint(equalTo: avatarImageView.layoutMarginsGuide.bottomAnchor),
                swiftBetaStackView.leadingAnchor.constraint(equalTo: avatarImageView.layoutMarginsGuide.leadingAnchor),
                swiftBetaStackView.trailingAnchor.constraint(equalTo: avatarImageView.trailingAnchor),
                swiftBetaStackView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor)
            ])
            
                view.addSubview(swiftBetaStackView11)
                
                /*
                //https://www.swiftbeta.com/uistackview-en-uikit-con-swift-en-espanol/
                */
                NSLayoutConstraint.activate([
                    swiftBetaStackView11.bottomAnchor.constraint(equalTo: avatarImageView.layoutMarginsGuide.bottomAnchor),
                    swiftBetaStackView11.leadingAnchor.constraint(equalTo: avatarImageView.layoutMarginsGuide.leadingAnchor),
                    swiftBetaStackView11.trailingAnchor.constraint(equalTo: avatarImageView.trailingAnchor),
                    swiftBetaStackView11.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor)
                ])
                
                ["","11","22"].forEach { price in
                    let button2 = UIButton(type: .system)
                    var configuration2 = UIButton.Configuration.borderedTinted()
                    configuration2.title = price
                    //configuration2.subtitle = "Suscripción"
                    //configuration2.image = UIImage(systemName: "eurosign.circle.fill")
                    configuration2.imagePadding = 30
                    configuration2.baseBackgroundColor = .systemBlue
                    button2.configuration = configuration2
                    
                    ["Aa","Batman"].forEach { price11 in
                        let button = UIButton(type: .system)
                        var configuration = UIButton.Configuration.borderedTinted()
                        //configuration.title = superHeroe.name
                        //configuration.subtitle = superHeroe.id
                        configuration.image =  if (configuration2.title != "11") { UIImage(systemName:"heart.fill") } else { UIImage(systemName:"figure.walk.motion") }
                        configuration.imagePadding = 12
                        configuration.baseBackgroundColor = .systemTeal
                        button.configuration = configuration
                        //button.backgroundColor =  UIColor.systemGreen
                        
                        
                       
                        
                        //    swiftBetaStackView.addArrangedSubview(button)
                        if (price11 == "Aa"){
                            swiftBetaStackView11.addArrangedSubview(button)
                        }
                        //swiftBetaStackView11.addArrangedSubview(button2)
                            
                       
                    }
                    if (configuration2.title != ""){
                        swiftBetaStackView.addArrangedSubview(button2)
                    }
                }
                
                
                //swiftBetaStackView.addArrangedSubview(button)
            
            
            
            /*view.addSubview(swiftBetaStackView)
                   
                   NSLayoutConstraint.activate([
                       swiftBetaStackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
                       swiftBetaStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
                       swiftBetaStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
                   ])*/
                   
                   
            
            
            
            
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
