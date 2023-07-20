//
//  ResultsPage.swift
//  STEMatch
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct ResultsPage: View {
    var programList: [Program] = []
    
    //KWK
    var KWKInPerson = Program(name: "Kode With Klossy In Person", location: [ "Chicago", "Los Angeles", "Miami", "NYC", "Seattle"], startAge: "13", endAge: "18", price: "0", subject: ["technology"])
    
    
    var body: some View {
        Text("Results")
        
    }
    
}

struct ResultsPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultsPage()
    }
}
