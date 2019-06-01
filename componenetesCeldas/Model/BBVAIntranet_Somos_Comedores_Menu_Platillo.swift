//
//  BBVAIntranet_Somos_Comedores_Menu_Platillo.swift
//  MenuSomos
//
//  Created by Gmo Ginppian on 5/29/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation

public class BBVAIntranet_Somos_Comedores_Menu_Platillo: NSObject {
    
    fileprivate var name: String?
    fileprivate var kilocalories: Int?
    fileprivate var dishType: BBVAIntranet_Somos_Comedores_Menu_DishType?
    fileprivate var id: Int?
    
    init(_ name: String,
         _ kilocalories: Int,
         _ dishType: BBVAIntranet_Somos_Comedores_Menu_DishType?,
         _ id: Int?) {
        
        self.name = name
        self.kilocalories = kilocalories
        self.dishType = dishType
        self.id = id
    }
    
    convenience init(json: NSDictionary) {
        
        let name = json["name"] as? String ?? String()
        let kilocalories = json["kilocalories"] as? Int ?? Int()
        let dishType = json["kilocalories"] as? BBVAIntranet_Somos_Comedores_Menu_DishType ?? BBVAIntranet_Somos_Comedores_Menu_DishType()
        let id = json["id"] as? Int ?? Int()
        
        self.init(name, kilocalories, dishType, id)
    }
    
    override public init() {
        self.name = String()
        self.kilocalories = Int()
        self.dishType = BBVAIntranet_Somos_Comedores_Menu_DishType()
        self.id = Int()
    }
    
    public var Name: String {
        get {
            return self.name ?? String()
        }
        set {
            self.name = newValue
        }
    }
    
    public var Kilocalories: Int {
        get {
            return self.kilocalories ?? Int()
        }
        set {
            self.kilocalories = newValue
        }
    }
    
    public var DishType: BBVAIntranet_Somos_Comedores_Menu_DishType {
        get {
            return self.dishType ?? BBVAIntranet_Somos_Comedores_Menu_DishType()
        }
        set {
            self.dishType = newValue
        }
    }
    
    public var ID: Int {
        get {
            return self.id ?? Int()
        }
        set {
            self.id = newValue
        }
    }
}
