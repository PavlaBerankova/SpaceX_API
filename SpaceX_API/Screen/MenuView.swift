//
//  MenuView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 14.06.2023.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var model = CompanyVM()
    
    var body: some View {
        NavigationStack {
                TabView {
                    MainView(company: Company(headquarters: Headquarters(address: "", city: "", state: ""), links: Links(website: "", flickr: "", twitter: "", elonTwitter: ""), name: "", founder: "", founded: 0, employees: 0, vehichle: 0, launchSites: 0, testSites: 0, valuation: 0, summary: ""))
                    
                        .tabItem {
                            Image(systemName: "building.2")
                            Text("Company")
                        }
                    
                    SecondView()
                        .tabItem {
                            Image(systemName: "airplane.departure")
                            Text("Launches")
                        }
                }
            
           
            
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
