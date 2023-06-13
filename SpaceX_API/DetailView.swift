//
//  Test.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 06.06.2023.
//

import SwiftUI

struct DetailView: View {
    var title: String
    var detail: String
    
    var body: some View {
        ZStack {
            Image("file1")
                .resizable()
            VStack(alignment: .leading) {
                
                Text(title)
                    .foregroundColor(.gray)
                Text(detail)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color.black)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 4)))
            }
            .foregroundColor(.white)
            .padding(.horizontal)
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Info", detail: "SpaceX this is the test how big is this frame. Ok frame is fine.")
    }
}
