//
//  ContentView.swift
//  todoList
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    // links views, initialy second view isn't shown
    var body: some View {
        VStack {
            HStack{
                Text("To Do List")
                    .font(.title)
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    Spacer()
                Button {
                    withAnimation {
                        self.showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .font(.system(size: 50))
                        .fontWeight(.semibold)
                }
            }
            .padding()
            Spacer()
        }
        if showNewTask {
            NewTodoView()
        }
    }
}

#Preview {
    ContentView()
}
