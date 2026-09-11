//
//  UltimatePortfolioAppApp.swift
//  UltimatePortfolioApp
//
//  Created by Michelle Bai on 01/09/2026.
//

import SwiftUI
import CoreData

@main
struct UltimatePortfolioApp: App {
    @StateObject var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView ()
            }
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
