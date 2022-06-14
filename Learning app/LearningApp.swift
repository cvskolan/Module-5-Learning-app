//
//  Learning_appApp.swift
//  Learning app
//
//  Created by ab86008 on 2022-06-14.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
