//
//  ButtonViewModel.swift
//  iOS17Project
//
//  Created by Carson H on 10/12/23.
//

import SwiftUI
import MapKit

class ButtonViewModel: ObservableObject { // tried to get search working but that was just too complicated
    
    @Published var searchResults: [MKMapItem]
    @Published var request: MKLocalSearch.Request
    
    init() {
        self.searchResults = []
        self.request = MKLocalSearch.Request()
        self.request.resultTypes = .pointOfInterest
        self.request.region = MKCoordinateRegion(
            center: .cuboulder,
            span: MKCoordinateSpan(latitudeDelta: 0.0125, longitudeDelta: 0.0125))
    }
    
    func search(for query: String) {
        self.request.naturalLanguageQuery = query
        Task {
            let search = MKLocalSearch(request: self.request) 
            let response = try? await search.start()
            searchResults = response?.mapItems ?? []
        }
    }
}
