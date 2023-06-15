//
//  BackgroundView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 14.06.2023.
//

import SwiftUI

struct BackgroundView: View {
    let backgroundImage = "backgroundSpace1"
    
    var body: some View {
        ZStack {
            Image(backgroundImage)
                .resizable()
                
        }
        .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
