//
//  CompanyVM.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 13.06.2023.
//

import Foundation

class CompanyVM: ObservableObject {
    
    @Published var company = [Company]()
    
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
