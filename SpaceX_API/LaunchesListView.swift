//
//  ContentView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 19.05.2023.
//

import SwiftUI

struct Company: Codable {
    let headquarters: Headquarters?
    let links: Links?
    let name: String?
    let founder: String?
    let founded: Int?
    let employees: Int?
    let vehichle: Int?
    let launchSites: Int?
    let testSites: Int?
    let valuation: Int?
    let summary: String?
}

struct Headquarters: Codable {
    let address: String
    let city: String
    let state: String
}

struct Links: Codable {
    let website: String
    let flickr: String
    let twitter: String
    let elonTwitter: String
}

enum APIError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}


struct LaunchesListView: View {
    @State var company: Company
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("file1")
                    .resizable()
                
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text(company.founder!)
                    Text(company.name!)
                    // MARK: - ADDRESS
//
                    
                    LinksView()
                        .padding()
                }
                .padding(.horizontal)
                .foregroundColor(.white)
                
            }
            .ignoresSafeArea()
            .task {
                do {
                    company = try await getData()
                } catch {
                    print("Error")
                }
            }
        }
    }
    
    
    func getData() async throws -> Company {
        let urlString = "https://api.spacexdata.com/v4/company"
        
        guard let url = URL(string: urlString) else {
            throw APIError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw APIError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(Company.self, from: data)
        } catch {
            throw APIError.invalidData
        }
        
    }
}

struct LaunchesListView_Previews: PreviewProvider {
    static var previews: some View {
    let sampleCompany = Company(headquarters: Headquarters(address: "", city: "", state: ""), links: Links(website: "", flickr: "", twitter: "", elonTwitter: ""), name: "", founder: "", founded: 0, employees: 0, vehichle: 0, launchSites: 0, testSites: 0, valuation: 0, summary: "")
        
        LaunchesListView(company: sampleCompany)

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

