//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김은혜 on 6/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            
            AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWIUp-YSw0BEWTEUoCr_rAJ4bQz69AzYt7wg&s")!) { image in image.resizable()
            } placeholder: {
                ProgressView("Downloading..")
            }
            
            Text("First Line")
                .foregroundStyle(.cyan)
                .font(.title)
                .padding([.top, .bottom], 20)
            Text("Second Line")
                .foregroundStyle(.green)
            Text("Third Line")
            HStack {
                Text("Left")
                Text("Right")
                    .fontWeight(.heavy)
            }
        }.foregroundStyle(.orange)
            .padding()
    }
}

#Preview {
    ContentView()
}
