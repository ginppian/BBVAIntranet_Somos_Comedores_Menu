//
//  BBVAIntranet_Somos_Comedores_Menu_TableViewCell.swift
//  MenuSomos
//
//  Created by Gmo Ginppian on 5/29/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

class BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell: UITableViewCell {
    
    public static let identifier = "BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell"
    public static let height = CGFloat(45.0)
    
    @IBOutlet weak var lblComida: UILabel!
    @IBOutlet weak var lblCalorias: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
