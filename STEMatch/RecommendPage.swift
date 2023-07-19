//
//  RecommendPage.swift
//  STEMatch
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct RecommendPage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("raisin black")
                VStack{
                    Text("Recommend")
                        .foregroundColor(Color.white)
                }
            }
            .ignoresSafeArea()
        }

    }
}

struct RecommendPage_Previews: PreviewProvider {
    static var previews: some View {
        RecommendPage()
    }
}
