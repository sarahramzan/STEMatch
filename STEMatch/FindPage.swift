//
//  FindPage.swift
//  STEMatch
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct FindPage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("raisin black")
                VStack{
                    Text("Find")
                        .foregroundColor(Color.white)
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct FindPage_Previews: PreviewProvider {
    static var previews: some View {
        FindPage()
    }
}
