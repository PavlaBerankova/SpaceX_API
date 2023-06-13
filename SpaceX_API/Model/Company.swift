//
//  Company.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 13.06.2023.
//

import Foundation

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
