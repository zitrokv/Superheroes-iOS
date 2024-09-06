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
}

struct powerStats: Codable {
    let intelligence: String?
    let strength: String?
    let speed: String?
    let durability: String?
    let power: String?
    let combat: String?
}

struct Image: Codable {
    let url: String

}
