//
//  ContentView.swift
//  STEMatch
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("raisin black")
                
                VStack {
                    
                    Text("STEMatch")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    TextField("username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(height: 40.0)
                    
                        .border(Color.white, width: 1)
                        .padding(.horizontal)
                        .background(Color.white)
                    
                    TextField("password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(height: 40.0)
                    
                        .border(Color.white, width: 1)
                        .padding(.horizontal)
                        .background(Color.white)
                    Spacer()
                        .frame(height: 30.0)
                    
                
                    NavigationLink(destination: HomePage()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 100.0, height: 40.0)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("ruddy blue")/*@END_MENU_TOKEN@*/)
                                
                                
                                
                            Text("Login")
                                .font(.title3)
                                .foregroundColor(Color("raisin black"))
                                
                                
                        }
                    }
                    
                    .padding()
                    
                    Spacer()
                        .frame(height: 20.0)
                    
                    NavigationLink(destination: FindPage()) {
                        Text("sign in as guest")
                            .underline()
                    }

                }
                .padding()
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
