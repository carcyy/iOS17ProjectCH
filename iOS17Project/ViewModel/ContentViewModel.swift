//
//  ContentViewModel.swift
//  iOS17Project
//
//  Created by CUBS Customer on 10/12/23.
//

import UserNotifications
import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var authorizationStatus: UNAuthorizationStatus = .notDetermined
    @Published var notificationScheduled: Bool = false
    
    func requestNotificationAuthorization() {
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in // hackingwithswift helped me here with all of the push notification stuff
            if let error = error {
                print("ERROR: \(error)")
            } else {
                print("SUCCESS")
            }
        }
    }
    
    func scheduleNotification() {
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Push Notification 1"
        content.body = "This notification was scheduled for 5 seconds after pressing the button."
        content.sound = .default
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger
        )
        
        center.add(request) { (error) in
            if let error = error {
                print("Error scheduling notification: \(error)")
            } else {
                DispatchQueue.main.async {
                    self.notificationScheduled = true
                }
            }
        }
    }
}

