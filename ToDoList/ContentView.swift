//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            } // closes HStack
            .padding()
            Spacer()
            List {
                ForEach(toDos) { todoItem in
                    Text(toDoItem.title)
                }
            }
        } //closes VStack
        if showNewTask {
            NewToDoView()
        }
    } //closes var body
} //closes struct

#Preview {
    ContentView()
}
