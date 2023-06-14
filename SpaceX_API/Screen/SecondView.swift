//
//  SecondView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 14.06.2023.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Image("backgroundSpace2")
                .resizable()
            
            VStack {
                Text("Comming Soon")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color("spaceBlueColor"))
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2)))
                    .shadow(color: Color("shadowColor"), radius: 3.0)
            }
            .padding(.horizontal)
            
                
        }
        .ignoresSafeArea()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
//Text("Summary:")
//    .foregroundColor(.gray)
//Text("SpaceX")
//    .font(.title3)
//    .padding()
//    .frame(maxWidth: .infinity)
//    .background(RoundedRectangle(cornerRadius: 5)
//        .fill(Color.black)
//        .frame(maxWidth: .infinity)
//                .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 4)))
