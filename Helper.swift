//
//  Helper.swift
//  A small collection of quick helpers to avoid repeating the same old code.
//
//  Created by Paul Hudson on 23/06/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import Foundation

func loadData<T: Decodable>(_ filename: String) -> T {
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not find \(filename) in main bundle.")
    }
    
    guard let data = try? Data(contentsOf: file) else {
        fatalError("Could not load data from \(filename).")
    }
    
    guard let decoded = try? JSONDecoder().decode(T.self, from: data) else {
        fatalError("Failed to decode \(filename).")
    }
    
    return decoded
}
