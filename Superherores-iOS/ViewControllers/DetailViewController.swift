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
    
    private let swiftBetaLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = true//false
            label.text = "🤑 In App Purchases 🤑"
            label.textAlignment = .center
            label.font = .systemFont(ofSize: 32)
            return label
        }()
    
    private let swiftBetaStackView11: UIStackView = {
            let stackView11 = UIStackView()
        stackView11.translatesAutoresizingMaskIntoConstraints = false
        
        stackView11.axis = .vertical //.horizontal
        stackView11.spacing = 22
        stackView11.alignment = .center
    
            return stackView11
        }()
    
    private let swiftBetaStackView: UIStackView = {
            let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.axis = .horizontal// .vertical
        stackView.spacing = 2
        stackView.alignment = .leading
        //stackView.collisionBoundingPath.lineWidth = CGFloat(bitPattern: 3)
        stackView.alignmentRect(forFrame: CGRect(x: 20, y: 3, width: 20, height: 3))
        stackView.backgroundColor = UIColor.systemGray3
        stackView.tintColor = UIColor(red: 35.0, green: 83.0, blue: 3.0, alpha: 0.3)
    
            return stackView
        }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let superHeroe = superHeroe {
            self.navigationItem.title = superHeroe.powerstats.combat! + " - " + superHeroe.name
            avatarImageView.loadFrom(url: superHeroe.image.url)
            
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
            
            
            
            //var nameAtt = Superheroe.Type.self.Elements
            let numbersString = ["1", "2", "3", "4", "5"]
            //var number = numbersString.map { String($0) }
            
            
            //Info General Superheroe
            
            numbersString.forEach {  number in
                    let button2 = UIButton(type: .system)
                var configuration2 = UIButton.Configuration.borderless()//.borderedTinted()
                //configuration2.title = number //price
                    //configuration2.subtitle = "Suscripción"
                    //configuration2.image = UIImage(systemName: "eurosign.circle.fill")
                    configuration2.imagePadding = 85//10
                    //configuration2.baseBackgroundColor = .systemBlue
                    //button2.configuration = configuration2
                    
                    ["Aa","Batman","Cc"].forEach { price11 in
                        let button = UIButton(type: .system)
                        var configuration = UIButton.Configuration.borderless()//borderedTinted()
                        //configuration.title = price11//superHeroe.name
                        //configuration.subtitle = superHeroe.id
                        if (configuration2.title != "") {
                            //configuration.image = UIImage(systemName:"heart.fill")
                            //configuration.subtitle = number //price11
                            
                            configuration.image = switch Int(number){
                            case 1:
                                UIImage(systemName:"figure.wave")
                                
                            case 2:
                                UIImage(systemName:"pencil.and.outline")
                            
                            case 3:
                                UIImage(systemName:"touchid")
                                
                            case 4:
                                UIImage(systemName:"peacesign")
                                
                            case 5:
                                UIImage(systemName: "line.horizontal.star.fill.line.horizontal")
                                
                            default:
                                UIImage(systemName:"heart.fill")
                                
                            }
                            
                            configuration.subtitle = switch Int(number){
                            case 1:
                                superHeroe.name
                                
                            case 2:
                                superHeroe.biography.publisher
                                //superHeroe.powerstats.combat!
                            
                            case 3:
                                superHeroe.biography.placeOfBirth
                                //superHeroe.powerstats.intelligence!
                                
                            case 4:
                                superHeroe.biography.alignment.uppercased()
                                //superHeroe.powerstats.power!
                                
                            default:
                                " - -  P O W E R   S T A T S  - - "
                                
                            }
                        } else {
                             configuration.image = UIImage(systemName:"figure.walk.motion")
                             //configuration.title = price11//superHeroe.name
                            
                        }
                        configuration.imagePadding = 45//12
                       
                        //configuration.baseBackgroundColor = .systemTeal
                        button.configuration = configuration
                        //button.backgroundColor =  UIColor.systemGreen
                        
                        
                       
                        
                        
                        if (price11 == "Aa"){
                            //button.textAlignment = .center
                            button.contentHorizontalAlignment = .center
                            button.titleLabel?.adjustsFontForContentSizeCategory = true
                            swiftBetaStackView11.addArrangedSubview(button)
                        }
                        
                            
                       
                    }
                    if (configuration2.title != ""){
                        swiftBetaStackView.addArrangedSubview(button2)
                    }
                    
             
               
                }
                
                
            
            //PowerStats
            
            
            numbersString.forEach {  number in
                    let button2 = UIButton(type: .system)
                    var configuration2 = UIButton.Configuration.borderedTinted()
                //configuration2.title = number //price
                    //configuration2.subtitle = "Suscripción"
                    //configuration2.image = UIImage(systemName: "eurosign.circle.fill")
                    configuration2.imagePadding = 85//10
                
                    //configuration2.baseBackgroundColor = .systemBlue
                    //button2.configuration = configuration2
                    
                    ["Aa","Batman","Cc"].forEach { price11 in
                        let button = UIButton(type: .system)
                        var configuration = UIButton.Configuration.borderedTinted()
                        //configuration.title = price11//superHeroe.name
                        //configuration.subtitle = superHeroe.id
                        if (configuration2.title != "") {
                            //configuration.image = UIImage(systemName:"heart.fill")
                            //configuration.subtitle = number //price11
                            
                            configuration.image = switch Int(number){
                            case 1:
                                UIImage(systemName:"microbe.circle")
                                
                            case 2:
                                UIImage(systemName:"comb.fill")
                            
                            case 3:
                                UIImage(systemName:"brain.head.profile")
                                
                            case 4:
                                UIImage(systemName:"bolt.ring.closed")
                                
                            default:
                                UIImage(systemName:"gauge.open.with.lines.needle.67percent.and.arrowtriangle")
                                
                            }
                            
                            configuration.subtitle = switch Int(number){
                            case 1:
                                superHeroe.powerstats.durability
                                
                            case 2:
                                superHeroe.powerstats.combat!
                            
                            case 3:
                                superHeroe.powerstats.intelligence!
                                
                            case 4:
                                superHeroe.powerstats.power!
                                
                            default:
                                superHeroe.powerstats.speed!
                                
                            }
                        } else {
                             configuration.image = UIImage(systemName:"figure.walk.motion")
                             //configuration.title = price11//superHeroe.name
                            
                        }
                        configuration.imagePadding = 45//12
                        //configuration.baseBackgroundColor = .systemTeal
                        button.configuration = configuration
                        //button.backgroundColor =  UIColor.systemGreen
                        
                        
                       
                        
                        
                        if (price11 == "Aa"){
                            swiftBetaStackView11.addArrangedSubview(button)
                        }
                        
                            
                       
                    }
                    if (configuration2.title != ""){
                        swiftBetaStackView.addArrangedSubview(button2)
                    }
                    
               
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
