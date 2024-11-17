//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by user270444 on 11/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
            Features_Grid()
            CarouselTabView()
            ScrollView{
                GoalContainer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
