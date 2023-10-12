//
//  ButtonView.swift
//  iOS17Project
//
//  Created by CUBS Customer on 10/12/23.
//

import SwiftUI
import MapKit

struct ButtonView: View {
    
    var body: some View {
        
        @EnvironmentObject var buttonViewModel : ButtonViewModel
        
        HStack {
            Button {
                buttonViewModel.search(for: "parking")
            } label: {
                Label("Parking", systemImage: "car.fill")
            }
            
            Button {
                buttonViewModel.search(for: "food")
            } label: {
                Label("Restaurants", systemImage: "fork.knife.circle.fill")
            }
        }
    }
}
