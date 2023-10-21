//
//  ContentView.swift
//  iOS17Project
//
//  Created by CUBS Customer on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var contentViewModel = ContentViewModel()
    @State private var isOn = false
    //@State private var buttonPosition: CGFloat = 20

    var body: some View {
            VStack {
                HStack {
                    VStack {
                        Button("R.Notif") {
                            contentViewModel.requestNotificationAuthorization()
                        }
                        Button("S.Notif") {
                            contentViewModel.scheduleNotification()
                        }
                    }
                    .padding([.leading, .trailing], 15)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(minWidth: 0, maxWidth: 130, minHeight: 0, maxHeight: 50, alignment: .center)
                            .padding([.leading, .trailing], 35)
                            .foregroundColor(Color(hue: 0.1, saturation: 0.3, brightness: 0.8))

                        RoundedRectangle(cornerRadius: 15)
                            .frame(maxWidth: 65, maxHeight: 50, alignment: .center)
                            .offset(x: isOn ? -32.5 : 32.5)
                            .foregroundColor(.white)
                            .opacity(0.5)

                        HStack {
                            Button(action: {
                                withAnimation {
                                    isOn = true
                                }
                            }) {
                                Text("Local")
                                    .frame(alignment: .center)
                                    .foregroundColor(.brown)
                            }
                            
                            Button(action: {
                                withAnimation {
                                    isOn = false
                                }
                            }) {
                                Text("Global")
                                    .foregroundColor(.brown)
                            }
                        }
                    }
                    .padding([.trailing, .leading], 15)
                    
                    Image("kitty")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .padding([.trailing, .leading], 15)
                }
                .safeAreaInset(edge: .top, alignment: .center, spacing: 0) {
                    Color.clear
                        .frame(height: 30)
                }
                
                HStack{
                    TabView {
                        HomeView()
                            .tabItem {
                                Image(systemName: "house")
                            }
                        PlusView()
                            .tabItem {
                                Image(systemName: "plus.app")
                            }
                        MapView()
                            .tabItem {
                                Image(systemName: "mappin.square.fill")
                            }
                    }
                }
                .safeAreaInset(edge: .bottom, alignment: .center, spacing: 5) {
                    Color.clear
                        .frame(height: 25)
                }
            }
        }
    }



#Preview {
    ContentView()
}
