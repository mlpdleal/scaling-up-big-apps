//
//  ExempleScrollView.swift
//  MoonshotExemple
//
//  Created by Manoel Leal on 03/06/22.
//

import SwiftUI

struct CustomText: View{
    
    let text: String
    
    var body: some View{
        Text(text)
    }
    
    init(_ text: String){
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ExempleScrollView: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(spacing: 10){
                ForEach(0..<100){
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ExempleScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ExempleScrollView()
    }
}
