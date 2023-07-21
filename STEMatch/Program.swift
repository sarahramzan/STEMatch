//
//  Program.swift
//  STEMatch
//
//  Created by Scholar on 7/20/23.
//

import Foundation
class Program {
    var name = ""
    var location: [String] = []
    var startAge = ""
    var endAge = ""
    var price = ""
    var subject: [String] = []
    var fav = false
    
    init(name: String, location: [String], startAge: String, endAge: String, price: String, subject: [String]){
        self.name = name
        self.location = location
        self.startAge = startAge
        self.endAge = endAge
        self.price = price
        self.subject = subject
    }
}
