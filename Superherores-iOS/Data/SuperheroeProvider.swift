//
//  SuperheroeProvider.swift
//  Superherores-iOS
//
//  Created by Mañanas on 4/9/24.
//

import Foundation

class SuperheroeProvider{
    static func findSuperheroesByName(_ name: String, withResult: @escaping ([Superheroe]) -> Void){
        
        guard let url = URL(string: "\(Constantes.BASE_URL)search/\(name)") else {
            //throw fatalError("URL not valid") --> la funcion nos pide lanzar throw o return
            print("URL not valid")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            } else if let data = data {
               //print("Data received: \(data)")
                /*if let str = String(data: data, encoding: .utf8) {
                    print("Successfully decoded: \(str)")
                }*/
                //let result: SuperheroeResponse = try! JSONDecoder().decode(SuperheroeResponse.self, from: data)
                let result = try! JSONDecoder().decode(SuperheroeResponse.self, from: data)
                
                withResult(result.results)
            }
        }
        task.resume()
        
        
    }
}
