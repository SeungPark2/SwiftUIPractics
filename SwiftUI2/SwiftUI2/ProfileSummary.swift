//
//  ProfileHost.swift
//  SwiftUI2
//
//  Created by PST on 2019/10/29.
//  Copyright © 2019 PST. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    static let goalFormat: DataFormatter = {
        let formatter = DataFormatter()
        formatter.dataStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()
    
    var body: some View {
        List {
            Text(profile.username)
                .bold()
                .font(.title)
            
            Text("Notifications: \(self.profile.prefersNotifications ? "On": "Off" ) ")
            
            Text("Seasonal photos: \(self.profile.seasonalPhoto.rawValue)")
            
            Text("Goal Data: \(self.profile.goalDate, formatter: Self.goalFormat)")
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
