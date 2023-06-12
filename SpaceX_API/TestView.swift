//
//  Test.swift
//  SpaceX_API
//
//  Created by Pavla Beránková on 06.06.2023.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        ZStack {
            Image("file1")
                .resizable()
            VStack {
                
                Rectangle()
                    .stroke(Color.white, style: StrokeStyle(lineWidth: 5))
                    .frame(width: .infinity)
                    .frame(height: 100)
                Text("SpaceX")
                
                   
            }
            .padding()
            
                
            
//            Text("SpaceX")
//                .font(.largeTitle).bold()
//                .foregroundColor(.white)
//                .clipShape(Rectangle().stroke(lineWidth: 2))
//                .foregroundColor(.white)
        }
        .ignoresSafeArea()
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
