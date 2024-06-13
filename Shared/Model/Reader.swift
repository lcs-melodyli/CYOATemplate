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
    var prefersDarkMode: Bool
    var lastPageReadId: Int?
    var stogotseraned: Int
    var hpearned: Int
    var atpearned: Int
    

    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case prefersDarkMode = "prefers_dark_mode"
        case stogotseraned = "Stogots_eraned"
        case hpearned = "hp_eraned"
        case atpearned = "at_eraned"
    }
    
}
