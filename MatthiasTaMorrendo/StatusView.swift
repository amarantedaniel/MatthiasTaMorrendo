//
//  StatusView.swift
//  MatthiasTaMorrendo
//
//  Created by Eduardo Cunha on 6/4/19.
//  Copyright © 2019 Eduardo Cunha. All rights reserved.
//

import SwiftUI

struct StatusView : View {
    var datapoint: Datapoint
    
    var body: some View {
        let (isDying, isFucked) = datapoint.statusMessage()
        
        return VStack {
            if isDying {
                Text("Sim")
                    .font(.headline)
            } else {
                Text("Não")
                    .font(.headline)
                
                if isFucked {
                    Text("Mas tá se fudendo.")
                        .font(.subheadline)
                }
            }
        }
    }
}
