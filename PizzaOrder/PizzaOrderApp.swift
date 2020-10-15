//
//  PizzaOrderApp.swift
//  PizzaOrder
//
//  Created by Mikhailov on 15.10.2020.
//

import SwiftUI

@main
struct PizzaOrderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
