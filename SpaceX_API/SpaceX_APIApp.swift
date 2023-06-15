//
//  SpaceX_APIApp.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 19.05.2023.
//

import SwiftUI

@main
struct SpaceX_APIApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(company: Company(headquarters: Headquarters(address: "", city: "", state: ""), links: Links(website: "", flickr: "", twitter: "", elonTwitter: ""), name: "", founder: "", founded: 0, employees: 0, vehichle: 0, launchSites: 0, testSites: 0, valuation: 0, summary: ""), links: Links(website: "", flickr: "", twitter: "", elonTwitter: ""))
        }
    }
}
