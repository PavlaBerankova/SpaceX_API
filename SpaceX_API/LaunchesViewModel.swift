//
//  LaunchesViewModel.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 19.05.2023.
//

import Foundation




//class LaunchesViewModel: ObservableObject {
//    @Published var launches = [Returned]()
//}
//
//struct Returned: Codable {
//        var flight_number: Int
//        var mission_name: String
//        var launch_year: String
//        var launch_date_local: String
//    }




//func getData() async {
//    print("We are accessing the url")
//    
//    guard let url = URL(string: "https://api.spacexdata.com/v3/launches/past") else { return }
//    
//    do {
//        let (data, _) = try await URLSession.shared.data(from: url)
//        
//        guard returned = try? JSONDecoder().decode(Returned.self, from: data) else { return }
//        
//        self.launches = returned
//        
//    } catch {
//        print(error)
//        
//    }
//    
//    
//    
//}
    
//    guard let url = URL(string: "https://api.spacexdata.com/v3/launches/past") else {
//        print("ERROR: Could not create a URL")
//        return
//    }
//
//    do{
//        URLSession.shared.dataTask(with: url:) { (data, _, _) in
//            let returned = try? JSONDecoder().decode([Returned].self, from: data) else {
//                print("ERROR: Could not decode returned JSON data")
//                return
//            }
//        }
//
//        guard
//
//
//
//    } catch {
//        print("ERROR: Could not user URL to get data and response")
//    }
//
//}
