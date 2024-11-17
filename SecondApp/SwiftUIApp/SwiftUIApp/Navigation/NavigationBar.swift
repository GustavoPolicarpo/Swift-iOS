//
//  NavigationBar.swift
//  SwiftUIApp
//
//  Created by user270444 on 11/10/24.


import SwiftUI

struct NavigationBar: View {
    
    @State private var users = ["Gustavo"]
    @State private var selectedUser: String = "Gustavo"
    @State private var isSelectingUser = false
    @State private var isAddingUser = false
    
    var body: some View {
        HStack{
            Button(selectedUser) {
                isSelectingUser = true
            }
            .font(.headline)
            .fontWeight(.bold)
            
            Button(action: {
                isAddingUser = true
            }){
                Image(systemName: "plus.circle.fill")
                .font(.title3)
                .foregroundStyle(.gray)
            }
        }
        .sheet(isPresented: $isSelectingUser) {
            UserSelectionView(users: users, selectedUser: $selectedUser)
        }
        
        .sheet(isPresented: $isAddingUser) {
            AddUserView(users: $users, selectedUser: $selectedUser)
        }
    }
}

struct UserSelectionView: View {
    let users: [String]
    @Binding var selectedUser: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            List(users, id: \.self) { user in
                Button(action: {
                    selectedUser = user
                    dismiss()
                }) {
                    Text(user)
                }
            }
            .navigationTitle("Selecione o usuário")
        }
    }
}

struct AddUserView: View {
    @Binding var users: [String]
    @Binding var selectedUser: String
    @Environment(\.dismiss) var dismiss
    
    @State private var newUserName: String = ""

    var body: some View {
        NavigationView {
            VStack {
                TextField("Novo Usuário", text: $newUserName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                HStack{
                    Button("Ok") {
                        if !newUserName.isEmpty {
                            selectedUser = newUserName
                            users.append(newUserName)
                            dismiss()
                        }
                    }
                    Button("Cancelar") {
                        dismiss()
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding()
                Spacer()
            }
            .navigationTitle("Adicionar novo usuário")
        }
    }
}

#Preview {
    NavigationBar()
}
