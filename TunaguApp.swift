//
//  TunaguApp.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-09.
//

import SwiftUI
import Firebase


@main
struct TunaguApp: App {
    
   @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            
            let viewModel = AppViewModel()
            
           MainContentView()
                .environmentObject(viewModel)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
       
        FirebaseApp.configure()
        return true
    }
}


