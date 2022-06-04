//
//  ScrollingGridExample.swift
//  MoonshotExemple
//
//  Created by Manoel Leal on 04/06/22.
//

import SwiftUI

struct ScrollingGridExample: View {
    
    let layout = [
        GridItem(.adaptive(minimum: 80,maximum: 120))
    ]
        
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: layout){
                ForEach(0..<1000){
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct ScrollingGridExample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingGridExample()
    }
}
