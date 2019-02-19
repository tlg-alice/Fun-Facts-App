//
//  FactProvider.swift
//  Fun Facts App
//
//  Created by Alice Muir on 18.02.19.
//  Copyright © 2019 Alice Muir. All rights reserved.
//

import Foundation
// GameKit includes the code for 'randomising' facts
import GameKit

// We included this array in a struct so that, if we want to make changes, we only change the facts in the struct in one place (FactProvider.Swift), instead of having to change it in multiple places.

struct FactProvider {
    let facts = ["Ants stretch when they wake up in the morning.",
                 "Ostriches can run faster than horses.",
                 "Olympic gold medals are actually made mostly of silver.",
                 "You are born with 300 bones; by the time you are an adult you will have 206.",
                 "It takes about 8 minutes for light from the Sun to reach Earth.",
                 "Some bamboo plants can grow almost a meter in just one day.",
                 "The state of Florida is bigger than England.",
                 "Some penguins can leap 2-3 meters out of the water.",
                 "On average, it takes 66 days to form a new habit.",
                 "Mammoths still walked the Earth when the Great Pyramid was being built."]
    
    // randomise facts shown when button pressed

    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        return facts[randomNumber]
        
    }

}
