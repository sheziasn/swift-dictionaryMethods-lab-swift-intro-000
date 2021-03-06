//
//  DictionaryMethods.swift
//  DictionaryMethods
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryMethods {
    
    // Questions #1, #2, #3, #6 and #7
    
    var starWarsHeroes = ["Luke Skywalker","Princess Leia","Han Solo","Rey"]
    var starWarsVillains = ["Darth Vader","Emperor Palpatine"]
var starWarsDroids = ["R2-D2","C-3P0","IG-88","BB-8"]
    var starWarsCharacters: [String: [String]] = [:]
    var starWarsGangsters = ["Watto","Jabba the Hutt"]


    
    

    
    // Question #4
   
    func addKyloRen() {
        starWarsVillains.append("Kylo Ren")
    }
    
    
    
    // Question #5
  
    func remove(droid: String) -> Bool {
        let ind = starWarsDroids.index(of: droid)
        if let ind = ind {
            if starWarsDroids.contains(droid){
                starWarsDroids.remove(at: ind)
                return true
            } else {
                return false
            }
        }
        return false
    }

    
    // Question #6
   
    func createStarWarsCharacters() {
        starWarsCharacters["Heroes"] = starWarsHeroes
        starWarsCharacters["Villains"] = starWarsVillains
        starWarsCharacters["Droids"] = starWarsDroids
        
    }

    
    // Question #7
    func createStarWarsGangsters() {
        starWarsCharacters["Gangsters"] = starWarsGangsters
    }

    
    
    // Question #8
    
    func description(characters: [String : [String]]) -> String {
        var number: Int
        var sentence: String = "--Star Wars Characters--"
        for (type, names) in characters {
            for (index, name) in names.enumerated() {
                number = index+1
                sentence += "\n\(type.uppercased()) \n \(number)\(name)\n"
            }
            
            
        }
        return sentence
    }
    
    
    // Question #9
    func addHearts() {
        for (types, names) in starWarsCharacters {
            print (names)
        }
    }
    
    
    
}
