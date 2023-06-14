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
        VStack(alignment: .leading) {
                    
                Text(title)
                .foregroundColor(Color("titleColor"))
                .font(.headline)
                    
                Text(detail)
                    .font(.callout)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color("spaceBlueColor"))
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2)))
                    .shadow(color: Color("shadowColor"), radius: 2.0)
                
            }
            .foregroundColor(.white)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Info:", detail: "SpaceX this is the test how big is this frame. Ok frame is fine.")
    }
}
