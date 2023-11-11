//
//  ContentView.swift
//  SOLO
//
//  Created by sakshi.j on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Home()
            // for light status bar...
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
