//
//  ReviewPage.swift
//  STEMatch
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ReviewPage: View {
    @State var opportunity = "Select opportunity"
    @State var star1Filled  = false
    
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
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 300.0, height: 65.0)
                            .foregroundColor(Color("ruddy blue"))
                        
                        Text("Write a Review")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                    Menu(opportunity) {
                        Button("Kode With Klossy") {
                            opportunity = "Kode With Klossy"
                        }
                          
                        Button("Girls Who Code") {
                            opportunity = "Girls Who Code"
                        }
                        
                        Button("Changemakers in Coding") {
                            opportunity = "Changemakers in Coding"
                        }
                        
                        Button("To be filled") {
                            opportunity = "[To be filled]"
                        }
                        
                        Button("To be filled") {
                            opportunity = "[To be filled]"
                        }
                        Button("To be filled") {
                            opportunity = "[To be filled]"
                        }
                    }
                    .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .frame(width: 250.0, height: 50.0)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                    
                    .background(Color("beige"))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                        .frame(height: 20.0)
                    
                    HStack {
                        Button {
                            star1Filled = true
                            
                        } label: {
                            Image(systemName: "star")
                                .foregroundColor(Color.white)
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "star")
                                .foregroundColor(Color.white)
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "star")
                                .foregroundColor(Color.white)
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "star")
                                .foregroundColor(Color.white)
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "star")
                                .foregroundColor(Color.white)
                        }
                        
                    }
                    Spacer()
                        .frame(height: 20.0)
                        
                    
                    
                    TextField("Write review here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width: 300.0, height: 300.0)
                    
                        .padding(.horizontal)
                        .background(Color("beige"))
                    Spacer()
                        .frame(height: 40.0)
                    
                    NavigationLink(destination: PostRevPage()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 200.0, height: 60.0)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("ruddy blue")/*@END_MENU_TOKEN@*/)
                                
                                
                                
                            Text("Submit")
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

struct ReviewPage_Previews: PreviewProvider {
    static var previews: some View {
        ReviewPage()
    }
}
