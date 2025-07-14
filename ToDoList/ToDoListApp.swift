//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Lisa Tang on 7/14/25.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for:ToDoItem.self)
        }
    }
}
