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
   
    @State var userAgeTemp = ""
    @State var startPrice = ""
    @State var endPrice = ""
//    var userSubjects: [String] = []
//    var userStartPrice = 0
//    var userEndPrice = 0
    
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
                                userLocation = "Seattle"
                            }
                              
                            Button("Los Angeles") {
                                location = "Los Angeles"
                                userLocation = "Los Angeles"
                            }
                            
                            Button("Chicago") {
                                location = "Chicago"
                                userLocation = "Chicago"
                            }
                            
                            Button("NYC") {
                                location = "NYC"
                                userLocation = "NYC"
                            }
                            
                            Button("Miami") {
                                location = "Miami"
                                userLocation = "Miami"
                            }
                            Button("International") {
                                location = "International"
                                userLocation = "International"
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
                        
                        Text("AGE")
                        
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        // variable to look at
                        HStack {
                            
                            TextField("  AGE", text: $userAgeTemp)
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
                                    userSubjects.append("science")
                                }
                            }
                            
                            Button("Tech") {
                                if (techCount1){
                                    subjectsSelected1 = "\(subjectsSelected1) tech, "
                                    techCount1 = false
                                    userSubjects.append("technology")
                                }
                            }
                            
                            Button("Engineering") {
                                if (engCount1){
                                    subjectsSelected1 = "\(subjectsSelected1) engineering, "
                                    engCount1 = false
                                    userSubjects.append("engineering")
                                }
                            }
                            
                            Button("Arts") {
                                if (artsCount1){
                                    subjectsSelected1 = "\(subjectsSelected1) arts, "
                                    artsCount1 = false
                                    userSubjects.append("arts")
                                }
                            }
                            
                            Button("Math") {
                                if (mathCount1){
                                    subjectsSelected1 = "\(subjectsSelected1) math, "
                                    mathCount1 = false
                                    userSubjects.append("math")
                                }
                            }
                            Button("Clear All") {
                                subjectsSelected1 = ""
                                userSubjects.removeAll()
                                
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
                        TextField("     $", text: $startPrice)
                            .frame(width: 50.0)
                            .frame(height: 40.0)
                            .foregroundColor(Color.black)
                        
                            .padding(.horizontal)
                            .background(Color("beige"))
                        
                        Text(" - ")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("beige"))
                        
                        TextField("  $$$", text: $endPrice)
                            .frame(width: 50.0)
                            .frame(height: 40.0)
                            .foregroundColor(Color.black)
                        
                            .padding(.horizontal)
                            .background(Color("beige"))
                    }
                    Spacer()
                        .frame(height: 55.0)
                    
//                    NavigationButton(destination: NextView(mhzValue: self.$mhzValue)){...}
                    NavigationLink(destination: ResultsPage(ageOfUser: $userAgeTemp, sPrice: $startPrice, ePrice: $endPrice)) {
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
