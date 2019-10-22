//
//  LandmarkRow.swift
//  SwiftUI1
//
//  Created by PST on 2019/10/22.
//  Copyright © 2019 PST. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: LandMark
    
    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark
    )
    }
}
