//
//  BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 6/1/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation
import UIKit

protocol Refrescar_Menu_Dia_CollectionViewCell_Delegate: NSObjectProtocol {
    func refrescar_menu_dia_collectioncell_delegate(menu: BBVAIntranet_Somos_Comedores_Menu)
}

extension BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.height
    }
}
extension BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell: UITableViewDataSource {
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return BBVAIntranet_Somos_Comedores_Tipo.allCases.count
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case BBVAIntranet_Somos_Comedores_Tipo.sopa.rawValue:
            return menu.Soups.count
        case BBVAIntranet_Somos_Comedores_Tipo.complementos.rawValue:
            return menu.Complements.count
        case BBVAIntranet_Somos_Comedores_Tipo.platoPrincipal.rawValue:
            return menu.MainCourses.count
        case BBVAIntranet_Somos_Comedores_Tipo.frijoles.rawValue:
            return menu.Beans.count
        case BBVAIntranet_Somos_Comedores_Tipo.ensaladas.rawValue:
            return menu.Salads.count
        case BBVAIntranet_Somos_Comedores_Tipo.pan.rawValue:
            return menu.Breads.count
        case BBVAIntranet_Somos_Comedores_Tipo.postre.rawValue:
            return menu.Desserts.count
        case BBVAIntranet_Somos_Comedores_Tipo.agua.rawValue:
            return menu.Waters.count
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier,
                                                    for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell {
            return cell
        }
        return UITableViewCell()
    }
    
}

class BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell: UICollectionViewCell, Refrescar_Menu_Dia_CollectionViewCell_Delegate {
        
    public static let identifier = "BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell"
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lbl: UILabel!
    
    var menu = BBVAIntranet_Somos_Comedores_Menu()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let nib = UINib(nibName: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier, bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.showsHorizontalScrollIndicator = false
        self.tableView.bounces = false
        
        //self.isSelected = false

    }
    
    func refrescar_menu_dia_collectioncell_delegate(menu: BBVAIntranet_Somos_Comedores_Menu) {
        self.menu = menu
    }

}
