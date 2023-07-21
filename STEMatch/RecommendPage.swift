//
//  RecommendPage.swift
//  STEMatch
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
var sciCount = true
var techCount = true
var engCount = true
var artsCount = true
var mathCount = true
struct RecommendPage: View {
    @State var subjectsSelected = ""
    @State var orgName = ""
    @State var oppName = ""
    @State var locs = ""
    @State var sAge = ""
    @State var eAge = ""
    @State var sPrice = ""
    @State var ePrice = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Color("raisin black")
                ScrollView {
                    VStack{
                        Spacer()
                            .frame(height: 50.0)
                        Text("STEMatch")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 350.0)
                            
                        Spacer()
                            .frame(height: 30.0)
                        VStack {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 300.0, height: 65.0)
                                    .foregroundColor(Color("ruddy blue"))
                                
                                Text("RECOMMEND")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                                .frame(height: 45.0)
                            
                            TextField("Organization Name", text: $orgName)
                                .frame(width: 250.0, height: 50.0)
                            
                                .padding(.horizontal)
                                .background(Color("beige"))
                            
                            Spacer()
                                .frame(height: 30.0)
                            // To be filled in as a drop down
                            
                            TextField("Opportunity Name", text: $oppName)
                                .frame(width: 250.0, height: 50.0)
                            
                                .padding(.horizontal)
                                .background(Color("beige"))
                            
                            Spacer()
                                .frame(height: 30.0)
                            
                            TextField("Location(s)", text: $locs)
                                .frame(width: 250.0, height: 50.0)
                            
                                .padding(.horizontal)
                                .background(Color("beige"))
                            
                            Spacer()
                                .frame(height: 30.0)
                            
                            
                            Text("AGE RANGE")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            HStack {
                                TextField("  AGE", text: $sAge)
                                    .frame(width: 50.0)
                                    .frame(height: 40.0)
                                    .foregroundColor(Color.black)
                                
                                
                                    .padding(.horizontal)
                                    .background(Color("beige"))
                                
                                Text(" - ")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("beige"))
                                
                                TextField("  AGE", text: $eAge)
                                    .frame(width: 50.0)
                                    .frame(height: 40.0)
                                    .foregroundColor(Color.black)
                                
                                    .padding(.horizontal)
                                    .background(Color("beige"))
                            }
                            
                            
                        }
                        Spacer()
                            .frame(height: 30.0)
                        
                        Text("SUBJECTS")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        
                        Menu("- \(subjectsSelected) -") {
                            
                            Button("Science") {
                                if (sciCount){
                                    subjectsSelected = "\(subjectsSelected) science, "
                                    sciCount = false
                                }
                            }
                            
                            Button("Tech") {
                                if (techCount){
                                    subjectsSelected = "\(subjectsSelected) tech, "
                                    techCount = false
                                }
                            }
                            
                            Button("Engineering") {
                                if (engCount){
                                    subjectsSelected = "\(subjectsSelected) engineering, "
                                    engCount = false
                                }
                            }
                            
                            Button("Arts") {
                                if (artsCount){
                                    subjectsSelected = "\(subjectsSelected) arts, "
                                    artsCount = false
                                }
                            }
                            
                            Button("Math") {
                                if (mathCount){
                                    subjectsSelected = "\(subjectsSelected) math, "
                                    mathCount = false
                                }
                            }
                            Button("Clear All") {
                                subjectsSelected = ""
                                
                            }
                        }
                        .fontWeight(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                        .frame(width: 250.0, height: 50.0)
                        .font(.title2)
                        .padding(.horizontal)
                        
                        .background(Color("beige"))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("PRICE")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        HStack {
                            TextField("     $", text: $sPrice)
                                .frame(width: 50.0)
                                .frame(height: 40.0)
                                .foregroundColor(Color.black)
                            
                                .padding(.horizontal)
                                .background(Color("beige"))
                            
                            Text(" - ")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color("beige"))
                            
                            TextField("  $$$", text: $ePrice)
                                .frame(width: 50.0)
                                .frame(height: 40.0)
                                .foregroundColor(Color.black)
                            
                                .padding(.horizontal)
                                .background(Color("beige"))
                        }
                        Spacer()
                            .frame(height: 55.0)
                        
                        
                        
                        
//                        NavigationLink(destination: ResultsPage()) {
//                            ZStack{
//                                RoundedRectangle(cornerRadius: 10)
//                                    .frame(width: 200.0, height: 60.0)
//                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("ruddy blue")/*@END_MENU_TOKEN@*/)
//
//                                Text("Submit")
//                                    .font(.title)
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color.white)
//
//                            }
//                        }
                    }
                    NavigationLink(destination: PostRecPage()) {
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

struct RecommendPage_Previews: PreviewProvider {
    static var previews: some View {
        RecommendPage()
    }
}
