//
//  HomeView.swift
//  iOS17Project
//
//  Created by CUBS Customer on 10/19/23.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(Color(hue: 0.1, saturation: 0.3, brightness: 0.8))
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .padding(25)
        }
    }
}
