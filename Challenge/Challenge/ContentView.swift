//
//  ContentView.swift
//  Challenge
//
//  Created by Manoel Leal on 10/06/22.
//

import SwiftUI



struct ContentView: View {
    
    @State private var insetAmount = 20.0
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink{
                    ArrowView()
                } label: {
                    Text("Arrow")
                }
                
                NavigationLink{
                    ColoredRectangle()
                } label: {
                    Text("Color Shape")
                }
            }
            .navigationTitle("Challenge")
          
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
