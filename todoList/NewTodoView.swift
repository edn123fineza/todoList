//
//  NewTodoView.swift
//  todoList
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct NewTodoView: View {
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.system(size: 30))
            TextField("Enter the task description", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
                    .padding(.horizontal)
            }
            .padding(.horizontal)
            .tint(.green)
            Button {
            } label: {
                Text("Save")
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .padding()
        }
    }
}

#Preview {
    NewTodoView()
}
