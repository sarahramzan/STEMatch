//
//  PostRecPage.swift
//  STEMatch
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct PostRecPage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("raisin black")
                VStack {
                    Text("Thank you for your recommendation!")
                        .font(.largeTitle)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    
                    
                    NavigationLink(destination: HomePage()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 290.0, height: 60.0)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("ruddy blue")/*@END_MENU_TOKEN@*/)
                                
                                
                                
                            Text(" < Back to Home Page ")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                    
                        }
                    }
                    
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct PostRecPage_Previews: PreviewProvider {
    static var previews: some View {
        PostRevPage()
    }
}
