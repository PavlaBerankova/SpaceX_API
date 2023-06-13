//
//  LogoView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 13.06.2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack {
            Image("file1")
                .resizable()
            
            Image("spaceXLogo")
                .resizable()
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .scaledToFit()
                .padding(.horizontal)
        }
        .ignoresSafeArea()
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
