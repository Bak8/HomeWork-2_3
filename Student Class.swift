//
//  Student Class.swift
//  3
//
//  Created by Atai Begaliev on 24/10/22.
//

import Foundation

class Students {
    var name : String
    var surname : String
    var age : Int
    var gpa : Double
    var schoolClass : String
    
    init(name:String, surname:String, age:Int , gpa:Double, schoolClass:String) {
        self.name = name
        self.surname = surname
        self.age = age
        self.gpa = gpa
        self.schoolClass = schoolClass
    }
}
