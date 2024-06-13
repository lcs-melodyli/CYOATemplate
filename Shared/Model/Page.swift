//
//  Page.swift
//  CYOATemplate
//
//  Created by Russell Gordon on 2023-05-29.
//

import Foundation

struct Events: Identifiable, Codable {
    
    // MARK: Stored properties
    var id: Int
    var narrative: String
    var success_rate: Double
    var hp_increment: Int
    var atp_increment: Int
    var stogots_increment: Int
    var name: String
    
    
    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    enum CodingKeys: String, CodingKey {
        case id
        case narrative
        case success_rate
        case hp_increment = "hp_increment"
        case atp_increment = "atp_increment"
        case stogots_increment = "Stogots_increment"
        case name
    }
    
    // MARK: Computed properties
    
    
}
