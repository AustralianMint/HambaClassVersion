//
//  ContentView.swift
//  HambaClassVersion
//
//  Created by Thomas Frey on 02.04.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                MapView()
                    .frame(width: 750, height: 750, alignment: .center)
            }
            .navigationTitle("SwiftUI Map")
            .border(Color.green, width: 2.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
