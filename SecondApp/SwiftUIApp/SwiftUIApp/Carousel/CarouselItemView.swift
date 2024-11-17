//
//  CarouselItemView.swift
//  SwiftUIApp
//
//  Created by user270444 on 11/10/24.
//

import SwiftUI

struct CarouselItemView: View {
    let banner: ServiceType
    var body: some View {
        Image(banner.imagem)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
    }
}

#Preview {
    CarouselItemView(
        banner: ServiceType(
            id:1,
            nome:"motivacional",
            imagem:"motivacional1"
        )
    )
}
