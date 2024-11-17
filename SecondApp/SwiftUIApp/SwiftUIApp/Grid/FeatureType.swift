//
//  FeatureType.swift
//  SwiftUIApp
//
//  Created by user270444 on 11/10/24.
//

import SwiftUI

struct FeatureType: View {
    let service: ServiceType
    var body: some View {
        VStack(spacing: 5){
            Image(service.imagem)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .fixedSize(horizontal: false, vertical: true)
            Text(service.nome)
                .font(.system(size: 20))
            }
        .frame(width: 80, height: 80)
    }
 }

#Preview {
    FeatureType(service:
                    ServiceType(id: 1,
                                nome: "Exercitar",
                                imagem: "exercitar")
    )
}
