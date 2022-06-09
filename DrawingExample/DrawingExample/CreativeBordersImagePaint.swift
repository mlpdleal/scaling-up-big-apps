//
//  CreativeBordersImagePaint.swift
//  DrawingExample
//
//  Created by Manoel Leal on 08/06/22.
//

import SwiftUI

struct CreativeBordersImagePaint: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 300)
                .border(ImagePaint(image: Image("Example"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5),scale: 0.2), width: 50)
            Capsule()
                .strokeBorder(ImagePaint(image: Image("Example"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.5), scale: 0.3), lineWidth: 20)
                .frame(width: 300, height: 200)
        }
    }
}

struct CreativeBordersImagePaint_Previews: PreviewProvider {
    static var previews: some View {
        CreativeBordersImagePaint()
    }
}
