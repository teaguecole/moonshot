//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Teague Cole on 3/13/22.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: Astronaut] {
        
        // url for the file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // get contents of file
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file)")
        }
        
        let decoder = JSONDecoder()
        
        // decode contents of file
        guard let loaded = try? decoder.decode([String: Astronaut].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        return loaded
    }
}
