//
//  HomeView.swift
//  iOS17Project
//
//  Created by CUBS Customer on 10/19/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isLiked: Bool = UserDefaults.standard.bool(forKey: "isLiked")
    @State private var isExpanded: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(Color(hue: 0.1, saturation: 0.3, brightness: 0.8))
                .frame(minWidth: 0, maxWidth: 500, minHeight: 0, maxHeight: 700)
                .padding(25)
            
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(Color.white)
                .frame(maxWidth: isExpanded ? 300 : 300, maxHeight: isExpanded ? 500 : 200)
                .padding([.top], isExpanded ? 0 : 400)
                .opacity(0.5)
            
            Button(action: {
                isLiked.toggle()
                UserDefaults.standard.set(isLiked, forKey: "isLiked")
            }) {
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .foregroundColor(isLiked ? .red : .brown)
                    .scaledToFit()
                    .scaleEffect(2)
            }
            .padding([.top], 300)
            .padding([.leading], 200)
            
            Button(action: {
                withAnimation {
                    isExpanded.toggle()
                }
            }) {
                Image(systemName: "square")
                    .foregroundColor(isExpanded ? .red : .black)
                    .scaledToFit()
                    .scaleEffect(2)
            }
            .padding([.top], 300)
            .padding([.leading], 100)
        }
    }
}
