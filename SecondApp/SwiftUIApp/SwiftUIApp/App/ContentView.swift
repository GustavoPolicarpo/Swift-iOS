//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by user270444 on 11/10/24.
//

import SwiftUI

struct ContentView: View {
    
    private var service = APIService()
    @State private var APIgoals: [GoalType] = []
    @State private var isLoading = false
    @State private var responseMessage: String = ""
    
    var body: some View {
        VStack {
            NavigationBar()
            Features_Grid()
            CarouselTabView()
            if isLoading {
                ProgressView("Loading...")
                    .progressViewStyle(CircularProgressViewStyle())
                    .padding()
            } else{
                ScrollView(showsIndicators: false){                GoalContainer(goals: APIgoals)
                }
            }
            Button(action: postMockedGoal) {
                Text("Create Goal")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(isLoading ? Color.gray : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Text(responseMessage.isEmpty ?
                 "Try create a new goal" : responseMessage)
                .padding()
                .foregroundColor(responseMessage.contains("Failed") ? .red : .green)
        }.onAppear(){
            getGoalsAF()
        }
        .padding()
    }
    
    func getGoalsAF(){
        isLoading = true
        DispatchQueue.global().async {
            sleep(3)
            service.getGoals{
                goals, error in
                if let goals = goals{
                    DispatchQueue.main.async{
                        self.APIgoals = goals
                        isLoading = false
                    }
                    
                }
            }
        }
     }
    
    func postMockedGoal() {
        let newGoal = GoalType(
            id: 7,
            icone: "star.fill",
            titulo: "New Goal",
            descricao: "Achieve greatness"
        )
        responseMessage = ""
        
        service.postGoal(newGoal) { result in
            DispatchQueue.main.async {
                isLoading = false
                switch result {
                case .success(let response):
                    responseMessage = "Success: \(response)"
                case .failure(let error):
                    responseMessage = "Failed: \(error.localizedDescription)"
                }
                removeMessageAfterDelay()
            }
        }
    }
    
    func removeMessageAfterDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            responseMessage = ""
        }
    }
        
        
}

#Preview {
    ContentView()
}
