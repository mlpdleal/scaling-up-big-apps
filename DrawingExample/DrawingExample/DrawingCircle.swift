//
//  DrawingCircle.swift
//  DrawingExample
//
//  Created by Manoel Leal on 07/06/22.
//

import SwiftUI

struct Arc1: InsettableShape{
    
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape{
        var arc1 = self
        arc1.insetAmount += amount
        return arc1
    }
}

struct DrawingCircle: View {
    var body: some View {
        Arc1(startAngle: .degrees(-90), endAngle: .degrees(90), clockwise: true)
            .strokeBorder(.blue, lineWidth: 40)
    }
}

struct DrawingCircle_Previews: PreviewProvider {
    static var previews: some View {
        DrawingCircle()
    }
}
