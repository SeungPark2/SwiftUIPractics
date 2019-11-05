//
//  pageViewController.swift
//  SwiftUI2
//
//  Created by PST on 2019/11/04.
//  Copyright © 2019 PST. All rights reserved.
//

import SwiftUI
import UIKit

struct pageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [controllers[0]], direction: .forward, animated: true)
    }
}

