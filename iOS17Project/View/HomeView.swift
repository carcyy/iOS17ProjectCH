//
//  HomeView.swift
//  iOS17Project
//
//  Created by CUBS Customer on 10/19/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isLiked: Bool = UserDefaults.standard.bool(forKey: "isLiked")
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(Color(hue: 0.1, saturation: 0.3, brightness: 0.8))
                .aspectRatio(contentMode: .fit)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .padding(25)
            
            Button(action: {
                        isLiked.toggle()
                        UserDefaults.standard.set(isLiked, forKey: "isLiked")
                    }) {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .foregroundColor(isLiked ? .red : .gray)
                    }
                }
        }
    }
