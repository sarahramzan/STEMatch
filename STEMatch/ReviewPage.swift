//
//  ReviewPage.swift
//  STEMatch
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ReviewPage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("raisin black")
                VStack{
                    Spacer()
                        .frame(height: 60.0)
                    Text("STEMatch")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct ReviewPage_Previews: PreviewProvider {
    static var previews: some View {
        ReviewPage()
    }
}
