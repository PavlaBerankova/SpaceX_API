//
//  LinksView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 06.06.2023.
//

import SwiftUI

struct LinksView: View {
    var body: some View {
        HStack(spacing: 20) {
            VStack {
                Image("twitter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 40,height: 40)
                    .onTapGesture {
                        if let twitterURL = URL(string: "https://twitter.com/SpaceX") {
                            UIApplication.shared.open(twitterURL)
                        }
                    }
//                Text("Twitter")
            }
            VStack {
                Image("flickr")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 40,height: 40)
                    .onTapGesture {
                        if let flickrURL = URL(string: "https://www.flickr.com/photos/spacex/") {
                            UIApplication.shared.open(flickrURL)
                        }
                    }
//                Text("Flickr")
            }
            VStack {
                Image("space1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 40,height: 40)
                    .onTapGesture {
                        if let websiteURL = URL(string: "https://www.spacex.com/") {
                            UIApplication.shared.open(websiteURL)
                        }
                    }
//                Text("Website")
            }
        }
    }
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        LinksView()
    }
}
