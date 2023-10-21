//
//  HomeViewOther.swift
//  iOS17Project
//
//  Created by CUBS Customer on 10/20/23.
//

import SwiftUI

struct HomeViewOther: View {
    
    @State private var isLiked: Bool = UserDefaults.standard.bool(forKey: "isLiked")
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(Color(hue: 0.7, saturation: 0.2, brightness: 0.1))
                .frame(minWidth: 0, maxWidth: 500, minHeight: 0, maxHeight: 700)
                .padding(25)
            
            RoundedRectangle(cornerRadius: 35)
                .foregroundColor(Color.white)
                .frame(maxWidth: 300, maxHeight: 200)
                .padding([.top], 400)
                .opacity(0.5)
            
            Button(action: {
                isLiked.toggle()
                UserDefaults.standard.set(isLiked, forKey: "isLiked")
            }) {
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .foregroundColor(isLiked ? .red : .black)
                    .scaledToFit()
                    .scaleEffect(2)
            }
            .padding([.top], 300)
            .padding([.leading], 200)
        }
    }
}
