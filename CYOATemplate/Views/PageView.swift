//
//  PageView.swift
//  CYOATemplate
//
//  Created by Russell Gordon on 2023-06-01.
//

import SwiftUI

struct PageView: View {

    // MARK: Stored properties

    // Access the book state through the environment
    @Environment(BookStore.self) var book
    
    // The view model for the page view
    @ObservedObject var viewModel: PageViewModel
    
    // MARK: Computed properties
    var body: some View {
        
        ScrollView {
            VStack(spacing: 10) {
                                          
                // Has the page loaded yet?
                if let events = viewModel.events {
                    
                    // DEBUG
                    let _ = print("Text for this page is:\n\n\(events.narrative)\n\n")
                    
                    Text(
                        try! AttributedString(
                            markdown: events.narrative,
                            options: AttributedString.MarkdownParsingOptions(
                                interpretedSyntax: .inlineOnlyPreservingWhitespace
                            )
                        )
                    )
                        .font(.title2)
                    
                    Divider()
                    
                    Spacer()

                } else {
                    
                    // Page still loading from database
                    ProgressView()
                }
                
            }
            .padding()
        }

    }
}

#Preview {
    PageView(
        viewModel: PageViewModel(book: BookStore())
    )
}

