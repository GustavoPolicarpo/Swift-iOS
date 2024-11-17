//
//  DataSourceMock.swift
//  SwiftUIApp
//
//  Created by user270444 on 11/10/24.
//

import Foundation


let servicesMock: [ServiceType] = [
    ServiceType(id: 1, nome: "Exercitar", imagem: "exercitar"),
    ServiceType(id: 2, nome: "Meditar", imagem: "meditar"),
    ServiceType(id: 3, nome: "Alongamento", imagem: "alongar"),
    ServiceType(id: 4, nome: "Coffee time", imagem: "coffe"),
    ServiceType(id: 5, nome: "Pausa5min", imagem: "break"),
    ServiceType(id: 6, nome: "Todo", imagem: "question"),
    ServiceType(id: 7, nome: "Todo", imagem: "question")
]

let motivationalMock: [ServiceType] = [
    ServiceType(id: 1, nome: "m1", imagem: "motivacional1"),
    ServiceType(id: 2, nome: "m2", imagem: "motivacional2"),
    ServiceType(id: 3, nome: "m3", imagem: "motivacional3")
]

let goalMock: [GoalType] = [
    GoalType(id: 1, icone: "moon.zzz.fill", titulo:"Descanso", descricao: "Dormir 8h por noite"),
    GoalType(id: 2, icone: "hare.fill", titulo:"Exercicio", descricao: "Correr 5km duas vezes na semana"),
    GoalType(id: 3, icone: "goforward.60", titulo:"Redes sociais", descricao: "Usar o celular por apenas 1h"),
    GoalType(id: 4, icone: "rectangle.on.rectangle", titulo:"To be done", descricao: "To be done"),
    GoalType(id: 5, icone: "doc.text.magnifyingglass", titulo:"To be done", descricao: "To be done"),
    GoalType(id: 6, icone: "questionmark.circle", titulo:"To be done", descricao: "To be done")
]
