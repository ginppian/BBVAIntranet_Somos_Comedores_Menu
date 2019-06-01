//
//  File.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 5/31/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    public class func fromNib() -> Self {
        return fromNib(nibName: nil)
    }
    
    public class func fromNib(nibName: String?) -> Self {
        func fromNibHelper<T>(nibName: String?) -> T where T : UIView {
            let bundle = Bundle(for: T.self)
            let name = nibName ?? String(describing: T.self)
            return bundle.loadNibNamed(name, owner: nil, options: nil)?.first as? T ?? T()
        }
        return fromNibHelper(nibName: nibName)
    }
}

public class BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_View: UIView {
    
    // MARK: - Constants
    public static let height = CGFloat(64.0)
    
    // MARK: - Outlets
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var btn: UIButton!
    

    
}
