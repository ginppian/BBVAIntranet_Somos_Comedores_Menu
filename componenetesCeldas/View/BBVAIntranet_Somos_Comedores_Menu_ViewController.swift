//
//  BBVAIntranet_Somos_Comedores_MenuViewController.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 6/1/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

extension BBVAIntranet_Somos_Comedores_Menu_ViewController {
    func setupCollection() {
        self.collectionView.showsHorizontalScrollIndicator = false
        self.collectionView.showsVerticalScrollIndicator = false
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        
        self.collectionView.isPagingEnabled = true
        self.collectionView.bounces = false
        
        let nib2 = UINib(nibName: BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell.identifier, bundle: nil)
        self.collectionView.register(nib2, forCellWithReuseIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell.identifier)
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
}
extension BBVAIntranet_Somos_Comedores_Menu_ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.menus.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell.identifier,
                                                         for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell {
            
            self.refrescar_menuDia_delegate = cell
            self.refrescar_menuDia_delegate?.refrescar_menu_dia_collectioncell_delegate(menu: self.menus[indexPath.item])
            return cell
        }
        return UICollectionViewCell()
    }
}
extension BBVAIntranet_Somos_Comedores_Menu_ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Item Selected 👻👻")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}
extension BBVAIntranet_Somos_Comedores_Menu_ViewController: UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.collectionView.bounds.width
        let height = self.collectionView.bounds.height
        return CGSize(width: width, height: height)
    }
}
extension BBVAIntranet_Somos_Comedores_Menu_ViewController {
    func fachadaVistas() {
        setup_Cabecera_Superior_View()
    }
    
    func setup_Cabecera_Superior_View() {
        contrain_Cabecera_Superior_View()
        cabecera_superior_view.lbl.text = "Comedores "
        cabecera_superior_view.lbl.textColor = .white
        
        cabecera_superior_view.btn.setBackgroundImage(UIImage(named: "cerrar"), for: .normal)
        //cabecera_superior_view.backgroundColor = UIColor.purple
        
        cabecera_superior_view.btn.addTarget(self, action: #selector(BBVAIntranet_Somos_Comedores_Menu_ViewController.cerrar(sender:)), for: .touchUpInside)
    }
    
    func contrain_Cabecera_Superior_View() {
        self.view.addSubview(cabecera_superior_view)
        cabecera_superior_view.heightAnchor.constraint(equalToConstant: BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_View.height).isActive = true
        cabecera_superior_view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        cabecera_superior_view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        cabecera_superior_view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    }
}
class BBVAIntranet_Somos_Comedores_Menu_ViewController: UIViewController {
    
    //@IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var menus = [BBVAIntranet_Somos_Comedores_Menu]()
    
    weak var refrescar_menuDia_delegate: Refrescar_Menu_Dia_CollectionViewCell_Delegate?

    var cabecera_superior_view: BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_View = {
        let v = BBVAIntranet_Somos_Comedores_Menu_Cabecera_Superior_View.fromNib()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor.moradoComedores
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fachadaVistas()
        setupCollection()
        UIView.animate(withDuration: 0.5) {
            UIApplication.shared.statusBarView?.backgroundColor = UIColor.moradoComedores
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        UIApplication.shared.statusBarView?.backgroundColor = UIColor.clear
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 0.33) {
            self.setNeedsStatusBarAppearanceUpdate()
        }
    }
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    convenience init(menus: [BBVAIntranet_Somos_Comedores_Menu]) {
        self.init()
        self.menus = menus
    }
    
    @objc func cerrar(sender: UIButton) {
        print("dismissing...")
        self.dismiss(animated: true, completion: nil)
    }
}
