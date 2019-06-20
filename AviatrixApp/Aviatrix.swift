//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var running = false
    var author = ""
    var data = AviatrixData()
    var loc = "St. Louis"
    var distanceTraveled = 0
    var fuelLevel = 0
    var maxFuel = 0
    var milesPerGallon = 0
    var fuelCost = 0.0
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) -> String {
        loc = destination
        return destination
    }
    
    func distanceTo(target : String, location: String) -> Int {
      loc = location 
      return data.knownDistances["St. Louis"]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
    
    init (authorName:String)
    {
        author = authorName
        print ("Welcome to the Aviatrix Flight System by \(author)")
    }
}
