//
//  GoalListView.swift
//  SwiftUIApp
//
//  Created by user270444 on 11/10/24.
//

import SwiftUI

struct GoalListView: View {
    let goal: GoalType
    var body: some View {
        HStack{
            Image(systemName: goal.icone)
                .font(.largeTitle)
            VStack(alignment: .leading){
                Text(goal.titulo).font(.headline)
                Text(goal.descricao).font(.subheadline)
            }
        }.foregroundStyle(.blue)    }
}

#Preview {
    GoalListView(goal: GoalType(
        id: 1,
        icone: "moon.zzz.fill",
        titulo: "Descanso",
        descricao: "Dormir 8h por noite"
    ))
}
