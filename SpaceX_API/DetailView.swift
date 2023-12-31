//
//  DetailView.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 06.06.2023.
//

import SwiftUI

struct DetailView: View {
    var detail: String
    
    var body: some View {
        VStack(alignment: .leading) {
                Text(detail)
                    .font(.callout)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .fill(Color("spaceBlueColor"))
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2)))
                    .shadow(color: Color("shadowColor"), radius: 3.0)
            }
            .foregroundColor(.white)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(detail: "SpaceX. This is the test how big is this frame. Ok, frame is fine.")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
