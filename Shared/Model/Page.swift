//
//  Page.swift
//  CYOATemplate
//
//  Created by Russell Gordon on 2023-05-29.
//

import Foundation

struct Page: Identifiable, Codable {
    
    // MARK: Stored properties
    var id: Int
    var narrative: String
    var image: String?
    var endingContext: String?
    var endingTypeId: Int?
    
    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    enum CodingKeys: String, CodingKey {
        case id
        case narrative
        case image
        case endingContext = "ending_context"
        case endingTypeId = "ending_type_id"
    }
    
    // MARK: Computed properties
    var isAnEndingOfTheStory: Bool {
        // Returns true when there is a ending type ID specified,
        // which means this page is an ending to the story
        return endingTypeId != nil
    }
    
}
