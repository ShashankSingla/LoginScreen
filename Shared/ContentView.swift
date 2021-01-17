//
//  ContentView.swift
//  Shared
//
//  Created by shashank on 17/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LoginView()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
