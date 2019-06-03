//
//  BBVAIntranet_Somos_Comedores_Menu_DishType.swift
//  MenuSomos
//
//  Created by Gmo Ginppian on 5/29/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation

public class BBVAIntranet_Somos_Comedores_Menu_DishType: NSObject {
    
    fileprivate var name: String?
    fileprivate var id: Int?
    
    init(_ name: String,
         _ id: Int) {
        self.name = name
        self.id = id
    }
    
    convenience init(json: NSDictionary) {
        
        let name = json["name"] as? String ?? String()
        let id = json["id"] as? Int ?? Int()
        
        self.init(name, id)
    }
    
    override public init() {
        super.init()
        
        self.name = String()
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
    
    public var ID: Int {
        get {
            return self.id ?? Int()
        }
        set {
            self.id = newValue
        }
    }
    
    override public var description: String {
        var _description = "\n"
        
        _description += "name: \(String(describing: self.name ?? String.Empty))\n"
        _description += "id: \(String(describing: self.id?.description ?? String.Empty))\n"
        
        return _description
    }
}
