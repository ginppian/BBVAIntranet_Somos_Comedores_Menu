//
//  BBVAIntranet_Somos_Comedores_Menu_Fecha_TableViewCell.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 6/1/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

class BBVAIntranet_Somos_Comedores_Menu_Fecha_TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl: UILabel!
    
    public static let identifier = "BBVAIntranet_Somos_Comedores_Menu_Fecha_TableViewCell"
    public static let height = CGFloat(45.0)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
