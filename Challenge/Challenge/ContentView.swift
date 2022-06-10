//
//  ContentView.swift
//  Challenge
//
//  Created by Manoel Leal on 10/06/22.
//

import SwiftUI

struct Arrow: Shape{
    
    var insetAmount: Double
    
    var animatableData: Double {
        get{
            insetAmount
        }
        set{
            insetAmount = newValue
        }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 200, y: 100))
        path.addLine(to: CGPoint(x: 100, y: 300))
        path.addLine(to: CGPoint(x: 300, y: 300))
        path.addLine(to: CGPoint(x: 200, y: 100))
        
        path.move(to: CGPoint(x: rect.midX - insetAmount, y: rect.midY - 25))
        path.addLine(to: CGPoint(x: rect.midX - insetAmount, y: rect.maxY - 150))
        path.addLine(to: CGPoint(x: rect.midX + (insetAmount * 2), y: rect.maxY - 150))
        path.addLine(to: CGPoint(x: rect.midX + (insetAmount * 2), y: rect.midY - 25))
      
        
        
        return path
    }
    
}




struct ContentView: View {
    
    @State private var insetAmount = 20.0
    
    var body: some View {
        Arrow(insetAmount: insetAmount)
            .onTapGesture {
                withAnimation{
                    insetAmount = Double.random(in: 15...20)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
