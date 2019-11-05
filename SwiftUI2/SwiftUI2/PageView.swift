//
//  PageView.swift
//  SwiftUI2
//
//  Created by PST on 2019/11/04.
//  Copyright © 2019 PST. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        pageViewController(controllers: viewControllers)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView( features.map { FeatureCard(landmark: $0) })
                .aspectRatio(3/2, contentMode: .fit)
    }
}
