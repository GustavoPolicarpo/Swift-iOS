//
//  Features_Grid.swift
//  SwiftUIApp
//
//  Created by user270444 on 11/10/24.
//

import SwiftUI

struct Features_Grid: View {

    var gridLayout: [GridItem]{
        return Array(repeating:
                        GridItem(.flexible()), count: 3)
    }
    
    var body: some View {
        ScrollView(.vertical){
            LazyVGrid(columns: gridLayout, spacing: 15){
                ForEach(servicesMock){
                    service in FeatureType(service: service)
                }
            }
        }.frame(height: 200)
            .padding(.horizontal, 15)
            .padding(.top, 15)
    }
}

#Preview {
    Features_Grid()
}
