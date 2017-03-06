//
//  ViewController.swift
//  Notifications
//
//  Created by JOSE PILAPIL on 2017-03-01.
//  Copyright © 2017 JOSE PILAPIL. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    // 1. Request Permission
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            if granted {
                print("Notification access granted")
            } else {
                print(error?.localizedDescription)
            }
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func notifyMeButtonTapped(_ sender: UIButton) {
        scheduleNotfication(inSeconds: 5) { (success) in
            if success {
                print("Sucessfully scheduled notification")
            } else {
                print("Error scheduling notification")
            }
        }
    }

    func scheduleNotfication(inSeconds: TimeInterval, completion: @escaping (_ Success: Bool) -> ()) {
        // add an attachment
        let myImage = "rick_grimes"
        guard let imageUrl = Bundle.main.url(forResource: myImage, withExtension: "gif") else {
            completion(false)
            return
        }
        
        var attachment: UNNotificationAttachment
        attachment = try! UNNotificationAttachment(identifier: "myNotification", url: imageUrl, options: .none)
        
        let notif = UNMutableNotificationContent()
        
        //Only For Extension
        notif.categoryIdentifier = "myNotificationCategory"
        notif.title = "New Notification"
        notif.subtitle = "These Are Great!"
        notif.body = "The new notification options in iOS 10 are what I've always dreamed of!"
         notif.attachments.append(attachment)
        
        
    let notificationTrigger = UNTimeIntervalNotificationTrigger(timeInterval: inSeconds, repeats: false)
        
        let request = UNNotificationRequest(identifier: "myNotification", content: notif, trigger: notificationTrigger)
        
        UNUserNotificationCenter.current().add(request) { (error) in
            if error != nil {
                print(error!)
                completion(false)
            } else {
                completion(true)
            }
        }
        
    }

}
