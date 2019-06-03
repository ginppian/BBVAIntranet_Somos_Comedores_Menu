//
//  BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_TableViewCell.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 5/31/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

class BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_View: UICollectionReusableView {
    
    // MARK: - ID
    public static let identifier = "BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_View"
    public static let height = CGFloat(167.0)

    // MARK: - Outlet
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        // Customize here
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
}
