//
//  UIApplication.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 6/2/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
    
}
