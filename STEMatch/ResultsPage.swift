//
//  ResultsPage.swift
//  STEMatch
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct ResultsPage: View {
    
    @Binding var ageOfUser: String
    @Binding var sPrice: String
    @Binding var ePrice: String
    
    var programList = [
        //KWK In Person
        Program(name: "Kode With Klossy In Person", location: [ "Chicago", "Los Angeles", "Miami", "NYC", "Seattle"], startAge: "13", endAge: "18", price: "0", subject: ["technology"]),
        
        //KWK virtual
        Program(name: "Kode With Klossy Virtual", location: ["International"], startAge: "13", endAge: "18", price: "0", subject: ["technology"]),
        
        //Changemakers in Coding
        Program(name: "Changemakers in Coding", location: ["Seattle"], startAge: "16", endAge: "17", price: "0", subject: ["science", "technology", "engineering", "arts", "math"]),
        
        //Varsity tutors
        Program(name: "Varsity Tutors", location: ["International"], startAge: "5", endAge: "18", price: "195", subject: ["science", "technology", "engineering", "arts", "math"]),
        
        //Berkeley
        Program(name: "Berkeley Pre-College Summer Residential Track", location: ["Los Angeles"], startAge: "16", endAge: "18", price: "15,800", subject: ["science", "technology", "engineering", "arts", "math"]),
        
        //Lavner Education
        Program(name: "Lavner Education: Camp Tech Revolution", location: ["Los Angeles", "Miami", "Chicago", "NYC", "Seattle", "International"], startAge: "6", endAge: "16", price: "999", subject: ["science", "technology", "engineering", "arts", "math"]),
        
        //Girls Who Code
        Program(name: "Girls Who Code", location: ["International"], startAge: "14", endAge: "17", price: "0", subject: ["technology"])
        
    ]
    
    var KWK = Program(name: "Kode With Klossy In Person", location: [ "Chicago", "Los Angeles", "Miami", "NYC", "Seattle"], startAge: "13", endAge: "18", price: "0", subject: ["technology"])
    
    @State var KWKFav = "heart"
    
    var KWKVirtual = Program(name: "Kode With Klossy Virtual", location: ["Chicago", "Los Angeles", "Miami", "NYC", "Seattle", "International"], startAge: "13", endAge: "18", price: "0", subject: ["technology"])
    
    @State var KWKVFav = "heart"
    
    var changemakers = Program(name: "Changemakers in Coding", location: ["Seattle"], startAge: "16", endAge: "17", price: "0", subject: ["science", "technology", "engineering", "arts", "math"])
    
    @State var changemakersFav = "heart"
    
    var varsityTutors = Program(name: "Varsity Tutors", location: ["Chicago", "Los Angeles", "Miami", "NYC", "Seattle", "International"], startAge: "5", endAge: "18", price: "195", subject: ["science", "technology", "engineering", "arts", "math"])
    
    @State var varsityTutorsFav = "heart"
    
    var berkeley = Program(name: "Berkeley Pre-College Summer Residential Track", location: ["Los Angeles"], startAge: "16", endAge: "18", price: "15,800", subject: ["science", "technology", "engineering", "arts", "math"])
    
    @State var berkeleyFav = "heart"
    
    var lavener = Program(name: "Lavner Education: Camp Tech Revolution", location: ["Los Angeles", "Miami", "Chicago", "NYC", "Seattle", "International"], startAge: "6", endAge: "16", price: "999", subject: ["science", "technology", "engineering", "arts", "math"])
    
    @State var lavnerFav = "heart"
    
    var GWC = Program(name: "Girls Who Code", location: ["Chicago", "Los Angeles", "Miami", "NYC", "Seattle", "International"], startAge: "14", endAge: "17", price: "0", subject: ["technology"])
    
    @State var GWCFav = "heart"

    
    var body: some View {
        //Text("Results")
        //        Text(ageOfUser)
        //        Text(sPrice)
        //        Text(ePrice)
        //        Text(userLocation)
        
        
        NavigationStack{
            ZStack{
                Color("raisin black")
                ScrollView{
                    VStack(alignment: .center){

                        
                        Spacer()
                            .frame(height: 50.0)
                        Text("STEMatch")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Spacer()
                            .frame(height: 50.0)
                        
                        Text("Your MATCHES")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.leading)
                       
                        if (filter(program: KWK, endPrice: ePrice, startPrice: sPrice, userAge: ageOfUser)){
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 350.0, height: 125.0)
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
                                    VStack(alignment: .leading){
                                        Text("Kode With Klossy")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("ruddy blue"))
                                        Text("Age Range: 13-18")
                                        Text("Price: free")
                                        HStack{
                                            Text("Subject: technology")
                                            Spacer()
                                                .frame(width: 50.0)
                                            Button {
                                                KWKFav = "heart.fill"
                                                KWK.fav = true
                                                
                                            } label: {
                                                Image(systemName: KWKFav)
                                                    .foregroundColor(Color("ruddy blue"))
                                            }                                }
                                    }
                                    Spacer()
                                    
                                }
                            }
                        }
                        
                        
                        if (filter(program: KWKVirtual, endPrice: ePrice, startPrice: sPrice, userAge: ageOfUser)){
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 350.0, height: 150.0)
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
                                    VStack(alignment: .leading){
                                        Text("Kode With Klossy Virtual")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("ruddy blue"))
                                        Text("Age Range: 13-18")
                                        Text("Price: free")
                                        HStack{
                                            Text("Subject: technology")
                                            Spacer()
                                                .frame(width: 50.0)
                                            Button {
                                                KWKVFav = "heart.fill"
                                                KWKVirtual.fav = true
                                                
                                            } label: {
                                                Image(systemName: KWKVFav)
                                                    .foregroundColor(Color("ruddy blue"))
                                            }                                }
                                    }
                                    Spacer()
                                    
                                }
                            }
                            
                        }
                        
                        if (filter(program: changemakers, endPrice: ePrice, startPrice: sPrice, userAge: ageOfUser)){
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 350.0, height: 150.0)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                                HStack{
                                    Spacer()
                                        .frame(width: 30.0)
                                    Image("cic")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 75.0, height: 75.0)
                                        .cornerRadius(10.0)
                                    
                                    Spacer()
                                        .frame(width: 20.0)
                                    VStack(alignment: .leading){
                                        Text("Changemakers in Computing")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("ruddy blue"))
                                        Text("Age Range: 16-17")
                                        Text("Price: free")
                                        HStack{
                                            Text("Subject: STEAM")
                                            Spacer()
                                                .frame(width: 75.0)
                                            Button {
                                                changemakersFav = "heart.fill"
                                                changemakers.fav = true
                                                
                                            } label: {
                                                Image(systemName: changemakersFav)
                                                    .foregroundColor(Color("ruddy blue"))
                                            }                                }
                                    }
                                    Spacer()
                                    
                                }
                            }
                        }
                        
                        if (filter(program: varsityTutors, endPrice: ePrice, startPrice: sPrice, userAge: ageOfUser)){
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 350.0, height: 125.0)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                                HStack{
                                    Spacer()
                                        .frame(width: 30.0)
                                    Image("vt logo")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 75.0, height: 75.0)
                                        .cornerRadius(10.0)
                                    
                                    Spacer()
                                        .frame(width: 20.0)
                                    VStack(alignment: .leading){
                                        Text("Varsity Tutors")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("ruddy blue"))
                                        Text("Age Range: 5-18")
                                        Text("Price: $195")
                                        HStack{
                                            Text("Subject: STEAM")
                                            Spacer()
                                                .frame(width: 75.0)
                                            Button {
                                                varsityTutorsFav = "heart.fill"
                                                varsityTutors.fav = true
                                            } label: {
                                                Image(systemName: varsityTutorsFav)
                                                    .foregroundColor(Color("ruddy blue"))
                                            }                                }
                                    }
                                    Spacer()
                                    
                                }
                            }
                        }
                        
                        if (filter(program: berkeley, endPrice: ePrice, startPrice: sPrice, userAge: ageOfUser)){
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 350.0, height: 150.0)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                                HStack{
                                    Spacer()
                                        .frame(width: 30.0)
                                    Image("ucb")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 75.0, height: 75.0)
                                        .cornerRadius(10.0)
                                    
                                    Spacer()
                                        .frame(width: 20.0)
                                    VStack(alignment: .leading){
                                        Text("Berkeley Pre-College")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("ruddy blue"))
                                        Text("Age Range: 16-18")
                                        Text("Price: $15,800")
                                        HStack{
                                            Text("Subject: STEAM")
                                            Spacer()
                                                .frame(width: 75.0)
                                            Button {
                                                berkeleyFav = "heart.fill"
                                                berkeley.fav = true
                                            } label: {
                                                Image(systemName: berkeleyFav)
                                                    .foregroundColor(Color("ruddy blue"))
                                            }                                }
                                    }
                                    Spacer()
                                    
                                }
                            }
                        }
                        
                        if (filter(program: lavener, endPrice: ePrice, startPrice: sPrice, userAge: ageOfUser)){
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 350.0, height: 125.0)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                                HStack{
                                    Spacer()
                                        .frame(width: 30.0)
                                    Image("lavner logo")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 75.0, height: 75.0)
                                        .cornerRadius(10.0)
                                    
                                    Spacer()
                                        .frame(width: 20.0)
                                    VStack(alignment: .leading){
                                        Text("Lavner Education")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("ruddy blue"))
                                        Text("Age Range: 6-16")
                                        Text("Price: $999")
                                        HStack{
                                            Text("Subject: STEAM")
                                            Spacer()
                                                .frame(width: 75.0)
                                            Button {
                                                lavnerFav = "heart.fill"
                                                lavener.fav = true
                                            } label: {
                                                Image(systemName: lavnerFav)
                                                    .foregroundColor(Color("ruddy blue"))
                                            }                                }
                                    }
                                    Spacer()
                                    
                                }
                            }
                        }
                        
                        
                        

                    }
                    
                    if (filter(program: GWC, endPrice: ePrice, startPrice: sPrice, userAge: ageOfUser)){
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 350.0, height: 125.0)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
                            HStack{
                                Spacer()
                                    .frame(width: 30.0)
                                Image("gwc")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 75.0, height: 75.0)
                                    .cornerRadius(10.0)
                                
                                Spacer()
                                    .frame(width: 20.0)
                                VStack(alignment: .leading){
                                    Text("Girls Who Code")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("ruddy blue"))
                                    Text("Age Range: 14-17")
                                    Text("Price: free")
                                    HStack{
                                        Text("Subject: technology")
                                        Spacer()
                                            .frame(width: 50.0)
                                        Button {
                                            GWCFav = "heart.fill"
                                            GWC.fav = true
                                        } label: {
                                            Image(systemName: GWCFav)
                                                .foregroundColor(Color("ruddy blue"))
                                        }
                                        
                                    }
                                }
                                Spacer()
                                
                            }
                        }
                        
                        
                    }
                    
//                    ZStack{
//                        RoundedRectangle(cornerRadius: 20)
//                            .frame(width: 350.0, height: 125.0)
//                            .foregroundColor(/*@START_MENU_TOKEN@*/Color("beige")/*@END_MENU_TOKEN@*/)
//                        HStack{
//                            Spacer()
//                                .frame(width: 30.0)
//                            Image("kode with klossy logo")
//                                .resizable(resizingMode: .stretch)
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 75.0, height: 75.0)
//                                .cornerRadius(10.0)
//
//                            Spacer()
//                                .frame(width: 20.0)
//
//                            VStack(alignment: .leading){
//                                Text("Girls Who Code")
//                                    .font(.title)
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color("ruddy blue"))
//                                Text("Age Range: 14-17")
//                                Text("Price: free")
//                                HStack{
//                                    Text("Subject: technology")
//                                    Spacer()
//                                        .frame(width: 50.0)
//                                    Button {
//                                        GWCFav = "heart.fill"
//
//                                    } label: {
//                                        Image(systemName: GWCFav)
//                                            .foregroundColor(Color("ruddy blue"))
//                                    }                                }
//                            }
//                            Spacer()
//
//                        }
//                    }
                    
                    
                }
            }
            .ignoresSafeArea()
        }
        
    }
    
}

func filter(program: Program, endPrice: String, startPrice: String, userAge: String) -> Bool {
    let endPrice2 = Int(endPrice) ?? 0
    let startPrice2 = Int(startPrice) ?? 0
    let userAge2 = Int(userAge) ?? 0
    
    let pPrice = Int(program.price) ?? 0
    let pStartAge = Int(program.startAge) ?? 0
    let pEndAge = Int(program.endAge) ?? 0
    
    if (userAge2 <= pEndAge && userAge2 >= pStartAge){
        if (pPrice <= endPrice2 && pPrice >= startPrice2){
            var match = false
            for location in program.location{
                if (location == userLocation){
                    match = true
                }
            }
            if (match){
                var match2 = false
                for subject1 in program.subject{
                    for subject2 in userSubjects{
                        if (subject1 == subject2){
                            match2 = true
                        }
                    }
                }
                if (match2){
                    return true
                }
            }
            
        }
    }
    
    return false
}

//func addProgram(programToAdd: Program, listOfPrograms: [Program]){
////    listOfPrograms.append(programToAdd)
//}

struct ResultsPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultsPage(ageOfUser: .constant(" "), sPrice: .constant(" "), ePrice: .constant(" "))
    }
}

