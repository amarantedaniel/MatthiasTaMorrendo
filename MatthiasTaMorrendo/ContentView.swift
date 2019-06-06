//
//  ContentView.swift
//  MatthiasTaMorrendo
//
//  Created by Eduardo Cunha on 6/4/19.
//  Copyright © 2019 Eduardo Cunha. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var datapoints: [Datapoint]
    
    var body: some View {
        VStack {
            Text("Matthias tá morrendo?")
                .font(.largeTitle)
                .padding()
            
            StatusView(datapoint: datapoints.last!)
            
            Spacer()
            
            GraphView(datapoints: datapoints)
        }
    }
}

struct GraphView : View {
    var datapoints: [Datapoint]
    
    var body: some View {
            HStack {
                ForEach(datapoints.identified(by: \.self)) { datapoint in
                    VStack {
                        Bar(value: datapoint.value)
                        Text("\(datapoint.value)")
                    }
                }
            }
            .padding()
    }
}

struct Bar : View {
    var value: Int
    
    var body: some View {
        Path { path in
            let width = 20.0
            let height = min(max(0.0, 100.0 * (Double(value) / 300.0)), 100.0)

            path.addRect(.init(x: 0.0, y: 0.0, width: width, height: -height))
        }
        .fill(self.color())
        .relativeWidth(1.0 / 6.0)
        .relativeHeight(0.35)
    }
    
    private func color() -> Color {
        if value < 80 {
            return Color.red
        } else if value <= 120 {
            return Color.green
        } else {
            return Color.yellow
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(datapoints: staticDatapoints)
    }
}
#endif
