//
//  Datapoint.swift
//  MatthiasTaMorrendo
//
//  Created by Eduardo Cunha on 6/4/19.
//  Copyright © 2019 Eduardo Cunha. All rights reserved.
//

import Foundation

struct Datapoint : Codable, Hashable {
    var date: Date
    var value: Int
    
    func statusMessage() -> (Bool, Bool) {
        if value < 80 {
            return (true, false)
        } else if value <= 120 {
            return (false, false)
        } else {
            return (false, true)
        }
    }
}

let staticDatapoints = [
    Datapoint(date: Date(), value: 70),
    Datapoint(date: Date(), value: 95),
    Datapoint(date: Date(), value: 105),
    Datapoint(date: Date(), value: 213),
    Datapoint(date: Date(), value: 120),
    Datapoint(date: Date(), value: 120),
    Datapoint(date: Date(), value: 120),
    Datapoint(date: Date(), value: 120),
    Datapoint(date: Date(), value: 120),
    Datapoint(date: Date(), value: 300)
]   
