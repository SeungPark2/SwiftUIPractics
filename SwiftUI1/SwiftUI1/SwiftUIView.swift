//
//  SwiftUIView.swift
//  SwiftUI1
//
//  Created by PST on 2019/10/21.
//  Copyright © 2019 PST. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 7))
            .shadow(radius: 10)
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
