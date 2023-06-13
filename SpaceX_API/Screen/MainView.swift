//
//  ContentView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 19.05.2023.
//

import SwiftUI

enum APIError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}

struct MainView: View {
    @State var company: Company
    @ObservedObject var model = CompanyVM()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("file1")
                    .resizable()
                VStack {
                    
                    LogoView()
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        DetailView(title: "Address:", detail: company.name!)
                        DetailView(title: "Employees", detail: String(company.founded!))
                        DetailView(title: "Employees", detail: "\(company.name!) founded \(company.founder!) at you")
                        Spacer()
                        LinksView()
                            .padding()
                    }
                   
                }
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
}

struct LaunchesListView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleCompany = Company(headquarters: Headquarters(address: "", city: "", state: ""), links: Links(website: "", flickr: "", twitter: "", elonTwitter: ""), name: "", founder: "", founded: 0, employees: 0, vehichle: 0, launchSites: 0, testSites: 0, valuation: 0, summary: "")
        
        MainView(company: sampleCompany)
        
    }
}


//        LaunchesListView(company: Company(headquarters: Headquarters(address: "", city: "", state: ""), links: Links(website: "", flickr: "", twitter: "", elonTwitter: ""), name: "", founder: "", founded: 0, employees: 0, vehichle: 0, launchSites: 0, testSites: 0, valuation: 0, summary: ""))

//                    Text(company.name! + ", " + company.headquarters!.address + ", " + company.headquarters!.city + ", " + company.headquarters!.state)
//                        .font(.title3)
//                        .padding()
//                        .frame(maxWidth: .infinity)
//                        .overlay(
//                            Rectangle().stroke(Color.white, lineWidth: 2)
//                        )

//
//                    Text(company.founder! + ", " + String(company.founded!) + ", " + String(company.employees!))
//                        .padding()
//                        .frame(maxWidth: .infinity)
//                        .overlay(
//                            Rectangle().stroke(Color.white, lineWidth: 2)
//                        )
//
//                    Text(company.summary!)
//                        .padding()
//                        .frame(maxWidth: .infinity)
//                        .overlay(
//                            Rectangle().stroke(Color.white, lineWidth: 2)
//                        )

