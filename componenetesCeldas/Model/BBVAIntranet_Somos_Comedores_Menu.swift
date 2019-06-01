//
//  BBVAIntranet_Somos_Comedores_Menu_Clase.swift
//  MenuSomos
//
//  Created by Gmo Ginppian on 5/29/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import Foundation

public class BBVAIntranet_Somos_Comedores_Menu: NSObject {
    
    var noPlatillos: Int {
        get {
            return 8
        }
    }
    
    fileprivate var soups: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var complements: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var mainCourses: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var beans: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var salads: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var breads: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var desserts: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var waters: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
    fileprivate var date: String?
    
    init(_ soups: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ complements: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ mainCourses: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ beans: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ salads: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ breads: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ desserts: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ waters: [BBVAIntranet_Somos_Comedores_Menu_Platillo],
         _ date: String) {
        
        self.soups = soups
        self.complements = complements
        self.mainCourses = mainCourses
        self.beans = beans
        self.salads = salads
        self.breads = breads
        self.desserts = desserts
        self.waters = waters
        self.date = date
    }
    
    convenience public init(json: NSDictionary) {
        let soups = json["soups"] as? [BBVAIntranet_Somos_Comedores_Menu_Platillo] ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        let complements = json["complements"] as? [BBVAIntranet_Somos_Comedores_Menu_Platillo] ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        let mainCourses = json["mainCourses"] as? [BBVAIntranet_Somos_Comedores_Menu_Platillo] ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        let beans = json["beans"] as? [BBVAIntranet_Somos_Comedores_Menu_Platillo] ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        let salads = json["salads"] as? [BBVAIntranet_Somos_Comedores_Menu_Platillo] ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        let breads = json["breads"] as? [BBVAIntranet_Somos_Comedores_Menu_Platillo] ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        let desserts = json["desserts"] as? [BBVAIntranet_Somos_Comedores_Menu_Platillo] ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        let waters = json["waters"] as? [BBVAIntranet_Somos_Comedores_Menu_Platillo] ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        let date = json["date"] as? String ?? String()
        
        self.init(soups, complements, mainCourses, beans, salads, breads, desserts, waters, date)
    }
    
    override public init() {
        super.init()
        
        self.soups = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.complements = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.mainCourses = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.beans = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.salads = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.breads = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.desserts = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.waters = [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        self.date = String()
    }
    
//    var soups: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var complements: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var mainCourses: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var beans: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var salads: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var breads: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var desserts: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var waters: [BBVAIntranet_Somos_Comedores_Menu_Platillo]?
//    var date: String?
    
    public var Soups: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.soups ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.soups = newValue
        }
    }
    
    public var Complements: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.complements ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.complements = newValue
        }
    }
    
    public var MainCourses: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.mainCourses ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.mainCourses = newValue
        }
    }
    
    public var Beans: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.beans ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.beans = newValue
        }
    }
    
    public var Salads: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.salads ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.salads = newValue
        }
    }
    
    public var Breads: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.breads ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.breads = newValue
        }
    }
    
    public var Desserts: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.desserts ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.desserts = newValue
        }
    }
    
    public var Waters: [BBVAIntranet_Somos_Comedores_Menu_Platillo] {
        get {
            return self.waters ?? [BBVAIntranet_Somos_Comedores_Menu_Platillo]()
        }
        set {
            self.waters = newValue
        }
    }
    
    public var Date: String {
        get {
            return self.date ?? String()
        }
        set {
            self.date = newValue
        }
    }
}
