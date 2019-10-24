//
//  HikeView.swift
//  SwiftUI2
//
//  Created by PST on 2019/10/24.
//  Copyright © 2019 PST. All rights reserved.
//

import SwiftUI

struct HikeView: View {
    var hike: Hike
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            HStack {
                HikeGraph(date: hike.observations, path: \.elevation)
                    .frame(width: 50, height: 30)
                
                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }
                
                Spacer()
                
                Button(action: {
                    self.showDetatil.toggle()
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degress(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                }
            }
            
            if showDetail {
                HikeDetail(hike: hike)
            }
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        HikeView(hike: hike)
    }
}
