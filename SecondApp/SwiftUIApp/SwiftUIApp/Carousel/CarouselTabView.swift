//
//  CarouselTabView.swift
//  SwiftUIApp
//
//  Created by user270444 on 11/10/24.
//

import SwiftUI

struct CarouselTabView: View {
    var body: some View {
        TabView{
            ForEach(motivationalMock){
                banner in CarouselItemView(banner: banner)
            }
        }
        .frame(width: 350)
        .tabViewStyle(.page(
            indexDisplayMode: .always
        ))
    }
}
#Preview {
  CarouselTabView()
}
