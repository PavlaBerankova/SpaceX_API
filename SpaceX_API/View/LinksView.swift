//
//  LinksView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 06.06.2023.
//

import SwiftUI

struct LinksView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
                Image("twitter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .frame(width: 30,height: 30)
                    .onTapGesture {
                        if let twitterURL = URL(string: "https://twitter.com/SpaceX") {
                            UIApplication.shared.open(twitterURL)
                        }
                    }
            
                Image("flickr")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .frame(width: 30,height: 30)
                    .onTapGesture {
                        if let flickrURL = URL(string: "https://www.flickr.com/photos/spacex/") {
                            UIApplication.shared.open(flickrURL)
                        }
                    }
            
                Image("space1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .frame(width: 30,height: 30)
                    .onTapGesture {
                        if let websiteURL = URL(string: "https://www.spacex.com/") {
                            UIApplication.shared.open(websiteURL)
                        }
                    }
        }
    }
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        LinksView()
    }
}
