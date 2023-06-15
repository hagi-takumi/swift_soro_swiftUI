//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Takumi_Hagi_BTC4 on 2023/06/14.
//

import SwiftUI

@main
struct TodoAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
        }
    }
}
