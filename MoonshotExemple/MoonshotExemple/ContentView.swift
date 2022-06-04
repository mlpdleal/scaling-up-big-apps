//
//  ContentView.swift
//  MoonshotExemple
//
//  Created by Manoel Leal on 03/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ geo in
            Image("Example")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8)
                .frame(width: geo.size.width, height: geo.size.height)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
