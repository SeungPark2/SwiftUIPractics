//
//  ProfileHost.swift
//  SwiftUI2
//
//  Created by PST on 2019/10/29.
//  Copyright © 2019 PST. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var mode
    @State var draftProfile = Profile.default

    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
        }
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
