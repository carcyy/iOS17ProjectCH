//
//  ContentView.swift
//  iOS17Project
//
//  Created by CUBS Customer on 10/12/23.
//

import SwiftUI

struct ContentView: View { // this view is messy
    
    @ObservedObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink(destination: MapView()) {
                    Text("Map")
                }
                Button("Request Notification") {
                    contentViewModel.requestNotificationAuthorization() // asks for permission to popup, if success it will allow you to schedule
                }
                
                Button("Schedule Notification") {
                    contentViewModel.scheduleNotification() //schedules it for 5 seconds later
                }
            }
            .padding()
        }

    }
}
#Preview {
    ContentView()
}

