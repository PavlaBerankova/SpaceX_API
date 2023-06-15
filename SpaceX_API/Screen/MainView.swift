//
//  MainView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 19.05.2023.
//

import SwiftUI

struct MainView: View {
    @State var company: Company
    @ObservedObject var model = CompanyVM()
   
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                
                VStack(spacing: 40) {
                    
                    LogoView()
                    
                    DetailView(detail: "\(company.headquarters?.address ?? "Address"), \(company.headquarters?.city ?? "City"), \(company.headquarters?.state ?? "State")").bold()
                    
                    DetailView(detail: "The company was founded by \(company.founder!). \(company.name!) has \(company.employees!) employees, \(company.launchSites!) launch sites, \(company.testSites!) test sides.\nHer valuation is \(formattedValuation) USD.")
                    
                    DetailView(detail: company.summary!)
                    
                    HStack(spacing: 20) {
                        LinksView(link: company.links?.twitter ?? "Twitter", image: "twitter")
                        LinksView(link: company.links?.flickr ?? "Flickr", image: "flickr")
                        LinksView(link: company.links?.website ?? "Website", image: "website")
                    }
                }
                .padding(.horizontal, 15)
                .padding(.bottom, 50)
                
                Spacer()
            }
            .ignoresSafeArea()
            .task {
                do {
                    company = try await model.getData()
                } catch {
                    print("Error")
                }
            }
        }
    }
    
    var formattedValuation: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        
        if let valuation = company.valuation {
            return numberFormatter.string(from: NSNumber(value: valuation)) ?? ""
        } else {
            return ""
        }
    }
}

enum APIError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}

struct LaunchesListView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleCompany = Company(headquarters: Headquarters(address: "", city: "", state: ""), links: Links(website: "", flickr: "", twitter: "", elonTwitter: ""), name: "", founder: "", founded: 0, employees: 0, vehichle: 0, launchSites: 0, testSites: 0, valuation: 0, summary: "")
        
        MainView(company: sampleCompany)
        
    }
}
