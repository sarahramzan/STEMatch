//
//  ContentView.swift
//  STEMatch
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("raisin black")
            VStack {
                
                Text("Hello, STEMatch!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
