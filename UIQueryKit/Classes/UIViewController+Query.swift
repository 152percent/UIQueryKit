//
//  UIViewController+Query.swift
//  UIQueryKit
//
//  Created by Shahpour Benkau on 21/04/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

extension UIViewController {
    public struct QueryMask: OptionSet {
        public let rawValue: Int
        public init(rawValue: Int) { self.rawValue = rawValue }
        
        public static let visible = QueryMask(rawValue: 1 << 0)
        public static let container = QueryMask(rawValue: 1 << 1)
        public static let leaf = QueryMask(rawValue: 1 << 2)
        public static let presented = QueryMask(rawValue: 1 << 3)
        public static let presenting = QueryMask(rawValue: 1 << 4)
    }
    
    public func has(mask: QueryMask) -> Bool {
        var result = true
        
        if mask.contains(.visible),
            let tab = tabBarController, tab.selectedViewController != self,
            let nav = navigationController, nav.topViewController != self,
            !isViewLoaded, view.has(mask: .visible) {
            result = false
        }
        
        if mask.contains(.container), childViewControllers.count == 0 {
            result = false
        }
        
        if mask.contains(.leaf), childViewControllers.count > 0 {
            result = false
        }
        
        if mask.contains(.presented), presentingViewController == nil {
            result = false
        }
        
        if mask.contains(.presenting), presentedViewController == nil {
            result = false
        }
        
        return result
    }
}
