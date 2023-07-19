//
//  FindPage.swift
//  STEMatch
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
var sciCount1 = true
var techCount1 = true
var engCount1 = true
var artsCount1 = true
var mathCount1 = true
struct FindPage: View {
    @State var subjectsSelected1 = ""
    @State var location = "Select Location"
    var body: some View {
        NavigationStack{
            
            ZStack{
                

                Color("raisin black")
                VStack{
                   
                    Text("STEMatch")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Spacer()
                        .frame(height: 30.0)
                    VStack {
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 300.0, height: 65.0)
                                .foregroundColor(Color("ruddy blue"))
                            
                            Text("Find a MATCH")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                            .frame(height: 45.0)
                        
                        
                        Menu(location) {
                            Button("Seattle") {
                                location = "Seattle"
                            }
                              
                            Button("Los Angeles") {
                                location = "Los Angeles"
                            }
                            
                            Button("Chicago") {
                                location = "Chicago"
                            }
                            
                            Button("NYC") {
                                location = "NYC"
                            }
                            
                            Button("Miami") {
                                location = "Seattle"
                            }
                            Button("International") {
                                location = "International"
                            }
                        }
                        
                        .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                        .frame(width: 250.0, height: 50.0)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal)
                        
                        .background(Color("beige"))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 30.0)
                        
                        Text("AGE RANGE")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        HStack {
                            TextField("  AGE", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .frame(width: 50.0)
                                .frame(height: 40.0)
                                .foregroundColor(Color.black)
                            
                                
                                .padding(.horizontal)
                                .background(Color("beige"))
                            
                            Text(" - ")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color("beige"))
                            
                            TextField("  AGE", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .frame(width: 50.0)
                                .frame(height: 40.0)
                                .foregroundColor(Color.black)
                            
                                .padding(.horizontal)
                                .background(Color("beige"))
                        }
                        Spacer()
                            .frame(height: 40.0)
                        
//                        Text("SUBJECT")
//                            .font(.title)
//                            .fontWeight(.bold)
//                            .foregroundColor(Color.white)
                        // Need drop down menu
                        Text("SUBJECTS")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        
                        Menu("- \(subjectsSelected1) -") {
                            
                            Button("Science") {
                                if (sciCount1){
                                    subjectsSelected1 = "\(subjectsSelected1) science, "
                                    sciCount1 = false
                                }
                            }
                            
                            Button("Tech") {
                                if (techCount1){
                                    subjectsSelected1 = "\(subjectsSelected1) tech, "
                                    techCount1 = false
                                }
                            }
                            
                            Button("Engineering") {
                                if (engCount1){
                                    subjectsSelected1 = "\(subjectsSelected1) engineering, "
                                    engCount1 = false
                                }
                            }
                            
                            Button("Arts") {
                                if (artsCount1){
                                    subjectsSelected1 = "\(subjectsSelected1) arts, "
                                    artsCount1 = false
                                }
                            }
                            
                            Button("Math") {
                                if (mathCount1){
                                    subjectsSelected1 = "\(subjectsSelected1) math, "
                                    mathCount1 = false
                                }
                            }
                            Button("Clear All") {
                                subjectsSelected1 = ""
                                
                            }
                        }
                        .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                        .frame(width: 250.0, height: 50.0)
                        .font(.title2)
                        .padding(.horizontal)
                        
                        .background(Color("beige"))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                       
                    
                       
                        
                    }
                    Text("PRICE")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    HStack {
                        TextField("     $", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .frame(width: 50.0)
                            .frame(height: 40.0)
                            .foregroundColor(Color.black)
                        
                            .padding(.horizontal)
                            .background(Color("beige"))
                        
                        Text(" - ")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("beige"))
                        
                        TextField("  $$$", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .frame(width: 50.0)
                            .frame(height: 40.0)
                            .foregroundColor(Color.black)
                        
                            .padding(.horizontal)
                            .background(Color("beige"))
                    }
                    Spacer()
                        .frame(height: 55.0)
                    
                        
                        NavigationLink(destination: ResultsPage()) {
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

struct FindPage_Previews: PreviewProvider {
    static var previews: some View {
        FindPage()
    }
}
