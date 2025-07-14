//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Lisa Tang on 7/14/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Bindable var toDoItem: ToDoItem
    var body: some View {
        VStack{
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
            
            
            
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            }
            .padding()
            Button("Save") {
               
            }
            .font(.title)
            .fontWeight(.bold)
       
        }
        
    }
    
}

#Preview {
    NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
}
