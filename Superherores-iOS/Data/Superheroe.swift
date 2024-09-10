//
//  Superheroe.swift
//  Superherores-iOS
//
//  Created by Mañanas on 4/9/24.
//

import Foundation

struct SuperheroeResponse: Codable {
    let response: String
    let results: [Superheroe]
}

struct Superheroe: Codable {
    let id: String
    let name: String
    let image: Image
    let powerstats: powerStats
    let biography: Biography
}


struct powerStats: Codable {
    let intelligence: String?
    let strength: String?
    let speed: String?
    let durability: String?
    let power: String?
    let combat: String?
}

struct Biography: Codable {
    let realName: String
    let placeOfBirth: String
    let publisher: String
    let alignment: String
    
    enum CodingKeys: String, CodingKey {
        case publisher, alignment
        case realName = "full-name"
        case placeOfBirth = "place-of-birth"
    }
}

struct Image: Codable {
    let url: String

}
