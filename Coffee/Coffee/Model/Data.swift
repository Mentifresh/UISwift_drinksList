//
//  Data.swift
//  Coffee
//
//  Created by Catalina Beta on 27/06/2019.
//  Copyright © 2019 Catalina Beta. All rights reserved.
//

import Foundation

let coffeeData: [Coffee] = load("data.json")

func load<T:Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Coudn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Coudn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Coudn't parse \(filename) as \(T.self):\n\(error)")
    }
}
