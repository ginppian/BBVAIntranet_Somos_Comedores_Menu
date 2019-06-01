//
//  ViewController.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 5/31/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

extension BBVAIntranet_Somos_Comedores_Menu_ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return BBVAIntranet_Somos_Comedores_Menu_Secciones.allCases.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case BBVAIntranet_Somos_Comedores_Menu_Secciones.cabecera.rawValue:
            return 1
        case BBVAIntranet_Somos_Comedores_Menu_Secciones.menuComida.rawValue:
            return 1
        default:
            return 1
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case BBVAIntranet_Somos_Comedores_Menu_Secciones.cabecera.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_TableViewCell.identifier, for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_TableViewCell {
                cell.img.image = UIImage(named: "open")
                cell.lbl.text = "asdf"
                cell.backgroundColor = UIColor.purple
                return cell
            }
            return UITableViewCell()
        case BBVAIntranet_Somos_Comedores_Menu_Secciones.menuComida.rawValue:
            if let cell = tableView.dequeueReusableCell(withIdentifier: BBVAIntranet_Somos_Comedores_Menu_TableViewCell.identifier, for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_TableViewCell {
                cell.contentView.backgroundColor = UIColor.green
                return cell
            }
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
}
extension BBVAIntranet_Somos_Comedores_Menu_ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case BBVAIntranet_Somos_Comedores_Menu_Secciones.cabecera.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_TableViewCell.height
        case BBVAIntranet_Somos_Comedores_Menu_Secciones.menuComida.rawValue:
            return BBVAIntranet_Somos_Comedores_Menu_TableViewCell.height
        default:
            return CGFloat()
        }
    }
}
class BBVAIntranet_Somos_Comedores_Menu_ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cabecera_superior_view: BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_View = {
        let v = BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_View.fromNib()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fachadaVistas()
        
        let nib1 = UINib(nibName: BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_TableViewCell.identifier, bundle: nil)
        self.tableView.register(nib1, forCellReuseIdentifier: BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_Anuncio_TableViewCell.identifier)
        
        let nib2 = UINib(nibName: BBVAIntranet_Somos_Comedores_Menu_TableViewCell.identifier, bundle: nil)
        self.tableView.register(nib2, forCellReuseIdentifier: BBVAIntranet_Somos_Comedores_Menu_TableViewCell.identifier)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    
    func fachadaVistas() {
        setup_Cabecera_Superior_View()
    }
    
    /**/
    func setup_Cabecera_Superior_View() {
        contrain_Cabecera_Superior_View()
        cabecera_superior_view.lbl.text = "Hola bola..."
        
        cabecera_superior_view.btn.setBackgroundImage(UIImage(named: "cerrar"), for: .normal)
        cabecera_superior_view.backgroundColor = UIColor.purple
    }
    
    func contrain_Cabecera_Superior_View() {
        self.view.addSubview(cabecera_superior_view)
        cabecera_superior_view.heightAnchor.constraint(equalToConstant: BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_View.height).isActive = true
        cabecera_superior_view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        cabecera_superior_view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        cabecera_superior_view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    }
    
}
