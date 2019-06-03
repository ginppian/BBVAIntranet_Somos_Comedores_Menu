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

extension BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell {
    func fachadaFecha() -> UIView {
        let v = UIView(frame: CGRect(x: 0, y: 0, width: tableView.contentSize.width, height: BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_View.height))
        v.addSubview(cabecera_superior_anuncio_view)
        cabecera_superior_anuncio_view.rightAnchor.constraint(equalTo: v.rightAnchor).isActive = true
        cabecera_superior_anuncio_view.leftAnchor.constraint(equalTo: v.leftAnchor).isActive = true
        //cabecera_superior_anuncio_view.topAnchor.constraint(equalTo: v.topAnchor).isActive = true
        cabecera_superior_anuncio_view.heightAnchor.constraint(equalToConstant: BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_View.height).isActive = true
        cabecera_superior_anuncio_view.bottomAnchor.constraint(equalTo: v.bottomAnchor).isActive = true
        
        cabecera_superior_anuncio_view.img.image = UIImage(named: "open")
        cabecera_superior_anuncio_view.lbl.textColor = .white
        return v
    }
    func fachadaComida(tipo_comida: String) -> UIView {
        print(tipo_comida)
        let v = UIView(frame: CGRect(x: 13, y: 0, width: tableView.contentSize.width, height: BBVAIntranet_Somos_Comedores_Menu_Dia_Seccion_Tipo_View.height))
        v.backgroundColor = .white
        let l = UILabel(frame: v.frame)
        v.addSubview(l)
        l.text = tipo_comida
        l.font = UIFont.boldSystemFont(ofSize: 13)
        l.textAlignment = .left
        
        return v
    }
}

extension BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.height
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch section {
        case BBVAIntranet_Somos_Comedores_Tipo.fecha.rawValue:
            return fachadaFecha()
        case BBVAIntranet_Somos_Comedores_Tipo.sopa.rawValue:
            return fachadaComida(tipo_comida: BBVAIntranet_Somos_Comedores_Tipo_Str.sopa.rawValue)
        case BBVAIntranet_Somos_Comedores_Tipo.complementos.rawValue:
            return fachadaComida(tipo_comida: BBVAIntranet_Somos_Comedores_Tipo_Str.complementos.rawValue)
        case BBVAIntranet_Somos_Comedores_Tipo.platoPrincipal.rawValue:
            return fachadaComida(tipo_comida: BBVAIntranet_Somos_Comedores_Tipo_Str.platoPrincipal.rawValue)
        case BBVAIntranet_Somos_Comedores_Tipo.frijoles.rawValue:
            return fachadaComida(tipo_comida: BBVAIntranet_Somos_Comedores_Tipo_Str.frijoles.rawValue)
        case BBVAIntranet_Somos_Comedores_Tipo.ensaladas.rawValue:
            return fachadaComida(tipo_comida: BBVAIntranet_Somos_Comedores_Tipo_Str.ensaladas.rawValue)
        case BBVAIntranet_Somos_Comedores_Tipo.pan.rawValue:
            return fachadaComida(tipo_comida: BBVAIntranet_Somos_Comedores_Tipo_Str.pan.rawValue)
        case BBVAIntranet_Somos_Comedores_Tipo.postre.rawValue:
            return fachadaComida(tipo_comida: BBVAIntranet_Somos_Comedores_Tipo_Str.postre.rawValue)
        case BBVAIntranet_Somos_Comedores_Tipo.agua.rawValue:
            return fachadaComida(tipo_comida: BBVAIntranet_Somos_Comedores_Tipo_Str.agua.rawValue)
        default:
            return nil
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case BBVAIntranet_Somos_Comedores_Tipo.fecha.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_View.height
        case BBVAIntranet_Somos_Comedores_Tipo.sopa.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_Dia_Seccion_Tipo_View.height
        case BBVAIntranet_Somos_Comedores_Tipo.complementos.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_Dia_Seccion_Tipo_View.height
        case BBVAIntranet_Somos_Comedores_Tipo.platoPrincipal.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_Dia_Seccion_Tipo_View.height
        case BBVAIntranet_Somos_Comedores_Tipo.frijoles.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_Dia_Seccion_Tipo_View.height
        case BBVAIntranet_Somos_Comedores_Tipo.ensaladas.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_Dia_Seccion_Tipo_View.height
        case BBVAIntranet_Somos_Comedores_Tipo.pan.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_Dia_Seccion_Tipo_View.height
        case BBVAIntranet_Somos_Comedores_Tipo.postre.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_Dia_Seccion_Tipo_View.height
        case BBVAIntranet_Somos_Comedores_Tipo.agua.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_Dia_Seccion_Tipo_View.height
        default:
            return CGFloat()
        }
    }
}
extension BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell: UITableViewDataSource {
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return BBVAIntranet_Somos_Comedores_Tipo.allCases.count
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case BBVAIntranet_Somos_Comedores_Tipo.fecha.rawValue:
            return 1
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
//        switch indexPath.section {
//        case BBVAIntranet_Somos_Comedores_Tipo.fecha.rawValue:
//            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Fecha_TableViewCell.identifier,
//                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Fecha_TableViewCell {
//                cell.lbl.text = menu.Date
//                return cell
//            }
//            return UITableViewCell()
//        default:
//            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier,
//                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell {
//                cell.lblComida.text = menu.
//                return cell
//            }
//            return UITableViewCell()
//        }
        switch indexPath.section {
        case BBVAIntranet_Somos_Comedores_Tipo.fecha.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Fecha_TableViewCell.identifier,
                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Fecha_TableViewCell {
                cell.lbl.text = menu.Date
                return cell
            }
            return UITableViewCell()
        case BBVAIntranet_Somos_Comedores_Tipo.sopa.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier,
                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell {
                cell.lblComida.text = menu.Soups[indexPath.row].Name
                cell.lblCalorias.text = "\(menu.Soups[indexPath.row].Kilocalories) KC"
                return cell
            }
            return UITableViewCell()
        case BBVAIntranet_Somos_Comedores_Tipo.complementos.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier,
                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell {
                cell.lblComida.text = menu.Complements[indexPath.row].Name
                cell.lblCalorias.text = "\(menu.Complements[indexPath.row].Kilocalories) KC"
                return cell
            }
            return UITableViewCell()
        case BBVAIntranet_Somos_Comedores_Tipo.platoPrincipal.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier,
                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell {
                cell.lblComida.text = menu.MainCourses[indexPath.row].Name
                cell.lblCalorias.text = "\(menu.MainCourses[indexPath.row].Kilocalories) KC"
                return cell
            }
            return UITableViewCell()
        case BBVAIntranet_Somos_Comedores_Tipo.frijoles.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier,
                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell {
                cell.lblComida.text = menu.Beans[indexPath.row].Name
                cell.lblCalorias.text = "\(menu.Beans[indexPath.row].Kilocalories) KC"
                return cell
            }
            return UITableViewCell()
        case BBVAIntranet_Somos_Comedores_Tipo.ensaladas.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier,
                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell {
                cell.lblComida.text = menu.Salads[indexPath.row].Name
                cell.lblCalorias.text = "\(menu.Salads[indexPath.row].Kilocalories) KC"
                return cell
            }
            return UITableViewCell()
        case BBVAIntranet_Somos_Comedores_Tipo.pan.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier,
                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell {
                cell.lblComida.text = menu.Breads[indexPath.row].Name
                cell.lblCalorias.text = "\(menu.Breads[indexPath.row].Kilocalories) KC"
                return cell
            }
            return UITableViewCell()
        case BBVAIntranet_Somos_Comedores_Tipo.postre.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier,
                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell {
                cell.lblComida.text = menu.Desserts[indexPath.row].Name
                cell.lblCalorias.text = "\(menu.Desserts[indexPath.row].Kilocalories) KC"
                return cell
            }
            return UITableViewCell()
        case BBVAIntranet_Somos_Comedores_Tipo.agua.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier,
                                                        for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell {
                cell.lblComida.text = menu.Waters[indexPath.row].Name
                cell.lblCalorias.text = "\(menu.Waters[indexPath.row].Kilocalories) KC"
                return cell
            }
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
    
}

class BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell: UICollectionViewCell, Refrescar_Menu_Dia_CollectionViewCell_Delegate {
        
    public static let identifier = "BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    var menu = BBVAIntranet_Somos_Comedores_Menu()
    
    var cabecera_superior_anuncio_view: BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_View = {
        let v = BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_View.fromNib()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor.moradoComedores
        return v
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let nib1 = UINib(nibName: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier, bundle: nil)
        self.tableView.register(nib1, forCellReuseIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_TableViewCell.identifier)
        
        let nib2 = UINib(nibName: BBVAIntranet_Somos_Comedores_Menu_Fecha_TableViewCell.identifier, bundle: nil)
        self.tableView.register(nib2, forCellReuseIdentifier: BBVAIntranet_Somos_Comedores_Menu_Fecha_TableViewCell.identifier)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.showsHorizontalScrollIndicator = false
        self.tableView.bounces = false
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = .white

        //self.isSelected = false

    }
    
    func refrescar_menu_dia_collectioncell_delegate(menu: BBVAIntranet_Somos_Comedores_Menu) {
        self.menu = menu
        self.tableView.reloadData()
    }

}
