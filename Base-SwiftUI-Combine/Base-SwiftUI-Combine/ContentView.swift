//
//  ContentView.swift
//  Base-SwiftUI-Combine
//
//  Created by NL on 14/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HomeViewCoodinator()
                .padding(0.0)
                .navigationBarHidden(true)
                .navigationBarTitle("", displayMode: .inline)
        }
        .background(Color.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
