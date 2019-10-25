//
//  CategoryHome.swift
//  SwiftUI2
//
//  Created by PST on 2019/10/25.
//  Copyright © 2019 PST. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var Categories: [String: [Landmarks]] {
        Dictionary(
            grouping: LandmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(CategoryHome.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationBarTitle(Text("Featured"))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
