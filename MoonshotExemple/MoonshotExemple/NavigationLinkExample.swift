//
//  NavigationLinkExample.swift
//  MoonshotExemple
//
//  Created by Manoel Leal on 03/06/22.
//

import SwiftUI

struct NavigationLinkExample: View {
    var body: some View {
        NavigationView{
            List(0..<100){ row in
                NavigationLink{
                    Text("Detail \(row)")
                } label: {
                    Text("Hello \(row)")

                }
                .navigationTitle("SwiftUI")
            }
        }
    }
}

struct NavigationLinkExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkExample()
    }
}
