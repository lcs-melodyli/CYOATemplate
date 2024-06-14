//
//  Reader.swift
//  CYOATemplate
//
//  Created by Russell Gordon on 2024-06-02.
//

import Foundation

struct Reader: Identifiable, Codable {
    
    var id: Int?
    var name: String?
    var userId: UUID?
    var prefersDarkMode: Bool
    var lastPageReadId: Int?
    var Stogots_earned: Int
    var hpearned: Int
    var atpearned: Int
    

    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case userId = "user_id"
        case prefersDarkMode = "prefers_dark_mode"
        case Stogots_earned = "Stogots_earned"
        case hpearned = "hp_earned"
        case atpearned = "atp_earned"
    }
    
}
