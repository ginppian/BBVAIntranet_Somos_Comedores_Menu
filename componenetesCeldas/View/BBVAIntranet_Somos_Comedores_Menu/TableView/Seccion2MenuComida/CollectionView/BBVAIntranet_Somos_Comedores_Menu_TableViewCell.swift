//
//  BBVAIntranet_Somos_Comedores_Menu_TableViewCell.swift
//  componenetesCeldas
//
//  Created by Gmo Ginppian on 6/1/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import UIKit

extension BBVAIntranet_Somos_Comedores_Menu_TableViewCell {
    func loadUI() {
        self.collectionView.showsHorizontalScrollIndicator = false
        self.collectionView.showsVerticalScrollIndicator = false
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        
        self.collectionView.isPagingEnabled = true
    }
}

class BBVAIntranet_Somos_Comedores_Menu_TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    public static let identifier = "BBVAIntranet_Somos_Comedores_Menu_TableViewCell"
    public static let height = CGFloat(500)
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.loadUI()
        
        let nib = UINib(nibName: BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell.identifier, bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell.identifier)
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        self.collectionView.bounces = false
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell.identifier,
                                                         for: indexPath) as? BBVAIntranet_Somos_Comedores_Menu_Dia_CollectionViewCell {
            cell.backgroundColor = .blue
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Item Selected 👻👻")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}

extension BBVAIntranet_Somos_Comedores_Menu_TableViewCell: UICollectionViewDelegateFlowLayout {
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.collectionView.bounds.width
        let height = self.collectionView.bounds.height
        return CGSize(width: width, height: height)
    }
}
