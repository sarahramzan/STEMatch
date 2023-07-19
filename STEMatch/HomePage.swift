//
//  HomePage.swift
//  STEMatch
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("raisin black")
                ScrollView {
                    VStack(alignment: .center) {
                        Spacer()
                            .frame(height: 60.0)
                        Text("STEMatch")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        HStack{
                            Spacer()
                                .frame(width: 25.0)
                            Image("icon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120.0, height: 120.0)
                                .clipShape(Circle())
                            Spacer()
                                .frame(width: 20.0)
                            Text("username")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Spacer()
                        }
                        
                        NavigationLink(destination: FindPage()) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 300.0, height: 50.0)
                                    .foregroundColor(Color("beige"))
                                
                                Text("FIND A MATCH")
                                    .font(.title)
                                    .foregroundColor(Color("raisin black"))
                                
                                
                            }
                        }
                        .padding()
                        
                        NavigationLink(destination: RecommendPage()) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 300.0, height: 50.0)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                                Text("RECOMMEND")
                                    .font(.title)
                                    .foregroundColor(Color("raisin black"))
                                
                                
                            }
                        }
                        .padding()
                        
                        NavigationLink(destination: ReviewPage()) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 300.0, height: 50.0)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                                
                                
                                
                                Text("REVIEW")
                                    .font(.title)
                                    .foregroundColor(Color("raisin black"))
                                
                                
                            }
                        }
                        .padding()
                        
                        Spacer()
                            .frame(height: 50.0)
                        
                        Text("YOUR FAVORITES")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Spacer()
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 350.0, height: 100.0)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                            HStack{
                                Spacer()
                                    .frame(width: 30.0)
                                Image("kode with klossy logo")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 75.0, height: 75.0)
                                    .cornerRadius(10.0)
                                
                                Spacer()
                                    .frame(width: 20.0)
                                Text("Opportunity 1")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("ruddy blue"))
                                Spacer()
                                
                            }
                        }
                        
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350.0, height: 100.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                        HStack{
                            Spacer()
                                .frame(width: 30.0)
                            Image("kode with klossy logo")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 75.0, height: 75.0)
                                .cornerRadius(10.0)
                            
                            Spacer()
                                .frame(width: 20.0)
                            Text("Opportunity 2")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ruddy blue"))
                            Spacer()
                            
                        }
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350.0, height: 100.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                        HStack{
                            Spacer()
                                .frame(width: 30.0)
                            Image("kode with klossy logo")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 75.0, height: 75.0)
                                .cornerRadius(10.0)
                            
                            Spacer()
                                .frame(width: 20.0)
                            Text("Opportunity 3")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ruddy blue"))
                            Spacer()
                            
                        }
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350.0, height: 100.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                        HStack{
                            Spacer()
                                .frame(width: 30.0)
                            Image("kode with klossy logo")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 75.0, height: 75.0)
                                .cornerRadius(10.0)
                            
                            Spacer()
                                .frame(width: 20.0)
                            Text("Opportunity 4")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color("ruddy blue"))
                            Spacer()
                            
                        }
                    }
                    
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
