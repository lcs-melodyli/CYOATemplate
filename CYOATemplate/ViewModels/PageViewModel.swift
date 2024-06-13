//
//  PageViewModel.swift
//  CYOATemplate
//
//  Created by Russell Gordon on 2024-06-03.
//

import Foundation
import Combine

class PageViewModel: ObservableObject {
    
    // The book property accessed from the environment
    @Published var book: BookStore
    
    // The Events property to be used in the view
    @Published var events: Events?
    
    // Initializer
    init(book: BookStore) {
        self.book = book
        
        // Load the initial event or handle as needed
        loadEvents()
    }
    
    // Method to load event data
    func loadEvents() {
        // Example data loading
        // Replace with actual data loading logic
        self.events = Events(
            id: 1,
            narrative: "This is an example narrative.",
            success_rate: 0.75,
            hp_increment: 10,
            atp_increment: 5,
            stogots_increment: 2,
            name: "Example Event"
        )
    }
}


