//
//  Missions.swift
//  Moonshot
//
//  Created by Teague Cole on 3/13/22.
//

import Foundation

struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let lanchDate: String?
    let crew: [CrewRole]
    let description: String
}
