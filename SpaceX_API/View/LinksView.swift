//
//  LinksView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 06.06.2023.
//

import SwiftUI

struct LinksView: View {
    let link: String
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .frame(width: 30,height: 30)
            .onTapGesture {
                if let linkURL = URL(string: link) {
                    UIApplication.shared.open(linkURL)
                }
            }
    }
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        LinksView(link: "https://twitter.com/SpaceX", image: "twitter")
    }
}
