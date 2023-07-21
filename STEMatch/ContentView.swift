//
//  ContentView.swift
//  STEMatch
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    @State var username = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Color("raisin black")
                
                VStack {
                    
                    Text("STEMatch")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    TextField("Username", text: $username)
                        .frame(height: 40.0)
                    
                        .padding(.horizontal)
                        .background(Color("beige"))
                    
                    TextField("Password", text: $password)
                        .frame(height: 40.0)
                        .padding(.horizontal)
                        .background(Color("beige"))
                   
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
                        Text("Sign in as guest")
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
