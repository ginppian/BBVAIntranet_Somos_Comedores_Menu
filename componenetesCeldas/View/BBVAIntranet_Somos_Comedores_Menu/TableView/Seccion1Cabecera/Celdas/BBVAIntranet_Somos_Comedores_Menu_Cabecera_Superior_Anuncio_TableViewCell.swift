//
//  BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_TableViewCell.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 5/31/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

class BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_TableViewCell: UITableViewCell {
    
    // MARK: - ID
    public static let identifier = "BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_TableViewCell"
    public static let height = CGFloat(110.0)

    // MARK: - Outlet
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    // MARK: - Init Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        // None selection
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
